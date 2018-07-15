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
