terraform {
  backend "s3" {
    bucket = "kleister-terraform"
    key    = "infra"
    region = "eu-central-1"
  }
}
