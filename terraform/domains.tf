resource "cloudflare_record" "root" {
  domain  = "${var.cloudflare_domain}"
  name    = "@"
  value   = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "www" {
  domain  = "${var.cloudflare_domain}"
  name    = "www"
  value   = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "dl" {
  domain  = "${var.cloudflare_domain}"
  name    = "dl"
  value   = "${element(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "minio" {
  domain  = "${var.cloudflare_domain}"
  name    = "minio"
  value   = "${element(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "drone" {
  domain  = "${var.cloudflare_domain}"
  name    = "drone"
  value   = "${element(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "scaler" {
  domain  = "${var.cloudflare_domain}"
  name    = "scaler"
  value   = "${element(var.server_names, 0)}.${var.cloudflare_domain}"
  type    = "CNAME"
  proxied = false
}
