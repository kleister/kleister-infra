resource "hcloud_ssh_key" "default" {
  for_each = { for row in var.ssh_keys : row.name => row }

  name       = each.value.name
  public_key = each.value.public_key
}
