provider "hcloud" {
  token   = "${var.hcloud_token}"
  version = "~> 1.10"
}

provider "cloudflare" {
  email   = "${var.cloudflare_email}"
  token   = "${var.cloudflare_token}"
  version = "~> 1.15"
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_org}"
  version      = "~> 2.1"
}

provider "template" {
  version = "~> 2.1"
}
