terraform {
  backend "s3" {
    bucket = "kleister-terraform"
    key    = "infra"
    region = "eu-central-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 5.16.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.31.0"
    }
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}

resource "cloudflare_zone" "kleister" {
  name = "kleister.eu"

  account = {
    id = var.cloudflare_account
  }
}
