variable "aws_region" {
  description = "AWS region to deploy resources into"
  type        = string
  default     = "eu-central-1"
}

variable "cloudflare_account" {
  description = "Cloudflare account ID for the DNS zone"
  type        = string
  default     = "37dfc4100b13549e4067cb18a6ed8a1a"
}
