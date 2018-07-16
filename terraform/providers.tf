provider "hcloud" {
  token   = "${var.hcloud_token}"
  version = "~> 1.2"
}

provider "cloudflare" {
  email   = "${var.cloudflare_email}"
  token   = "${var.cloudflare_token}"
  version = "~> 1.0"
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_org}"
  version      = "~> 1.1"
}

provider "template" {
  version = "~> 1.0"
}
