resource "hcloud_ssh_key" "default" {
  count = "${length(keys(var.ssh_keys))}"

  name       = "${element(keys(var.ssh_keys), count.index)}"
  public_key = "${element(values(var.ssh_keys), count.index)}"
}
