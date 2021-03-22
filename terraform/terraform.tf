terraform {
  backend "s3" {
    bucket = "kleister-terraform"
    key    = "infra"
    region = "eu-central-1"
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.25.2"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 2.19.2"
    }
    github = {
      source  = "integrations/github"
      version = "~> 4.5.2"
    }
  }

  required_version = ">= 0.13"
}

provider "github" {
  organization = "kleister"
}
