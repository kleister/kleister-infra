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
