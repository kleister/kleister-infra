resource "hcloud_server" "server" {
  count      = "${var.server_count}"
  depends_on = ["hcloud_ssh_key.default"]

  name        = "${element(var.server_names, count.index)}"
  server_type = "${var.server_type}"
  image       = "${var.server_image}"
  datacenter  = "${var.server_datacenter}"
  backups     = "${var.server_backups}"
  user_data   = "${data.template_file.user_data.rendered}"
  ssh_keys    = ["${var.server_keys}"]

  lifecycle {
    ignore_changes = ["ssh_keys"]
  }
}

resource "cloudflare_record" "serverv4" {
  count = "${var.server_count}"

  domain  = "${var.cloudflare_domain}"
  name    = "${element(var.server_names, count.index)}"
  value   = "${element(hcloud_server.server.*.ipv4_address, count.index)}"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "serverv6" {
  count = "${var.server_count}"

  domain  = "${var.cloudflare_domain}"
  name    = "${element(var.server_names, count.index)}"
  value   = "${element(hcloud_server.server.*.ipv6_address, count.index)}1"
  type    = "AAAA"
  proxied = false
}

resource "hcloud_rdns" "serverv4" {
  count = "${var.server_count}"

  server_id  = "${element(hcloud_server.server.*.id, count.index)}"
  ip_address = "${element(hcloud_server.server.*.ipv4_address, count.index)}"
  dns_ptr    = "${element(var.server_names, count.index)}.${var.cloudflare_domain}"
}

resource "hcloud_rdns" "serverv6" {
  count = "${var.server_count}"

  server_id  = "${element(hcloud_server.server.*.id, count.index)}"
  ip_address = "${element(hcloud_server.server.*.ipv6_address, count.index)}1"
  dns_ptr    = "${element(var.server_names, count.index)}.${var.cloudflare_domain}"
}
