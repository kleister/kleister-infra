variable "hcloud_token" {
  type = "string"
}

variable "cloudflare_token" {
  type = "string"
}

variable "cloudflare_email" {
  type    = "string"
  default = "kleister@webhippie.de"
}

variable "cloudflare_domain" {
  type    = "string"
  default = "kleister.tech"
}

variable "github_token" {
  type = "string"
}

variable "github_org" {
  type    = "string"
  default = "kleister"
}

variable "github_members" {
  type = "map"

  default = {
    kleisterz = "admin"
    tboerger  = "admin"
  }
}

variable "bot_members" {
  type = "map"

  default = {
    kleisterz = "maintainer"
  }
}

variable "bot_repos" {
  type = "map"

  default = {
    homebrew-kleister = "admin"
    kleister-android  = "admin"
    kleister-api      = "admin"
    kleister-cli      = "admin"
    kleister-desktop  = "admin"
    kleister-docs     = "admin"
    kleister-go       = "admin"
    kleister-infra    = "admin"
    kleister-ios      = "admin"
    kleister-js       = "admin"
    kleister-php      = "admin"
    kleister-python   = "admin"
    kleister-ruby     = "admin"
    kleister-scripts  = "admin"
    kleister-ui       = "admin"
  }
}

variable "maintainer_members" {
  type = "map"

  default = {
    tboerger = "maintainer"
  }
}

variable "maintainer_repos" {
  type = "map"

  default = {
    homebrew-kleister = "push"
    kleister-android  = "push"
    kleister-api      = "push"
    kleister-cli      = "push"
    kleister-desktop  = "push"
    kleister-docs     = "push"
    kleister-go       = "push"
    kleister-infra    = "push"
    kleister-ios      = "push"
    kleister-js       = "push"
    kleister-php      = "push"
    kleister-python   = "push"
    kleister-ruby     = "push"
    kleister-scripts  = "push"
    kleister-ui       = "push"
  }
}

variable "ssh_keys" {
  type = "map"

  default = {
    "tboerger@loki" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCc1nE4kCs9WXEEbotF+0Rivnr/9I0fc56QLZTqIr4Rsl3iZcvVDgYJmh6rPcl9xKBptNo/jK1EJF/bm2APf6wIU5Q7tNjeIw5IMJnBRBfPdQujXumb1LZMGnQvPT/gHdpVZvPkYlKkBocOJGPG99GZL0FlXXpc4eDYrgCMfCzRFG1SbQWcUdipbJJgELmbiOy7c5eHtb9i51x7g99pC91WnpInuN4pa0AFHwDQpBhS8RSLFEAfWNNs4T3SiYiUUq0lIHBoIoTM8fTTzhshXAlGWuwsZ9c9luEAw+n4QL8oD9a2ycWTJ3JCRK3CC/+J2MqCROSL4zpVA7+PFrloScMV"
  }
}

variable "ssh_port" {
  type    = "string"
  default = "22022"
}

variable "server_count" {
  type    = "string"
  default = "1"
}

variable "server_type" {
  type    = "string"
  default = "cx11"
}

variable "server_image" {
  type    = "string"
  default = "ubuntu-18.04"
}

variable "server_datacenter" {
  type    = "string"
  default = "fsn1-dc8"
}

variable "server_backup" {
  type    = "string"
  default = "02-06"
}

variable "server_names" {
  type = "map"

  default = {
    "0" = "bous"
  }
}
