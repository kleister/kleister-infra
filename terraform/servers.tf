resource "hcloud_server" "server" {
  count      = "${var.server_count}"
  depends_on = ["hcloud_ssh_key.default"]

  name          = "${lookup(var.server_names, count.index)}"
  server_type   = "${var.server_type}"
  image         = "${var.server_image}"
  datacenter    = "${var.server_datacenter}"
  backup_window = "${var.server_backup}"
  user_data     = "${data.template_file.user_data.rendered}"
  ssh_keys      = ["${keys(var.ssh_keys)}"]
}

resource "cloudflare_record" "serverv4" {
  count = "${var.server_count}"

  domain  = "${var.cloudflare_domain}"
  name    = "${lookup(var.server_names, count.index)}"
  value   = "${element(hcloud_server.server.*.ipv4_address, count.index)}"
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "serverv6" {
  count = "${var.server_count}"

  domain  = "${var.cloudflare_domain}"
  name    = "${lookup(var.server_names, count.index)}"
  value   = "${element(hcloud_server.server.*.ipv6_address, count.index)}"
  type    = "AAAA"
  proxied = false
}
