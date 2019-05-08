output "server_ipv4" {
  value = "${join(" ", hcloud_server.server.*.ipv4_address)}"
}

output "server_ipv6" {
  value = "${join(" ", hcloud_server.server.*.ipv6_address)}1"
}

output "server_names" {
  value = "${join(" ", hcloud_server.server.*.name)}"
}
