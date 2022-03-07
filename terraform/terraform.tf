terraform {
  backend "s3" {
    bucket = "kleister-terraform"
    key    = "infra"
    region = "eu-central-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.9.0"
    }
  }

  required_version = ">= 1.0"
}
