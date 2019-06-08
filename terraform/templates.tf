data "template_file" "user_data" {
  template = "${file("../templates/user_data.tmpl")}"

  vars = {
    ssh_port = "${var.ssh_port}"
  }
}
