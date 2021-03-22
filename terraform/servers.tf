locals {
  server_keys = flatten([
    for ssh_key in var.ssh_keys : [
      ssh_key.name
    ]
  ])
}

resource "hcloud_server" "server" {
  for_each = { for row in var.server_list : row.name => row }

  name        = each.value.name
  server_type = each.value.type
  image       = each.value.image
  datacenter  = each.value.dc
  backups     = each.value.backups
  ssh_keys    = local.server_keys

  user_data = templatefile("userdata.tmpl", {
    server_name = each.value.name
  })

  labels = merge({
    provisioner            = "ansible"
    prometheus_scrape_node = "9100"
  }, each.value.metadata)

  lifecycle {
    ignore_changes = [
      ssh_keys,
      image,
      user_data,
    ]
  }
}

resource "cloudflare_record" "serverv4" {
  for_each = { for row in var.server_list : row.name => row }

  zone_id = cloudflare_zone.kleister.id
  name    = each.value.name
  value   = hcloud_server.server[each.value.name].ipv4_address
  type    = "A"
  proxied = false
}

resource "hcloud_rdns" "serverv4" {
  for_each = { for row in var.server_list : row.name => row }

  server_id  = hcloud_server.server[each.value.name].id
  ip_address = hcloud_server.server[each.value.name].ipv4_address
  dns_ptr    = "${each.value.name}.kleister.tech"
}

resource "cloudflare_record" "serverv6" {
  for_each = { for row in var.server_list : row.name => row }

  zone_id = cloudflare_zone.kleister.id
  name    = each.value.name
  value   = hcloud_server.server[each.value.name].ipv6_address
  type    = "AAAA"
  proxied = false
}

resource "hcloud_rdns" "serverv6" {
  for_each = { for row in var.server_list : row.name => row }

  server_id  = hcloud_server.server[each.value.name].id
  ip_address = hcloud_server.server[each.value.name].ipv6_address
  dns_ptr    = "${each.value.name}.kleister.tech"
}
