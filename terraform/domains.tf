resource "cloudflare_zone" "kleister" {
  zone = "kleister.tech"
}

resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.kleister.id
  name    = "kleister.tech"
  value   = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "www" {
  zone_id = cloudflare_zone.kleister.id
  name    = "www"
  value   = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "dl" {
  zone_id = cloudflare_zone.kleister.id
  name    = "dl"
  value   = "ingress.webhippie.de"
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "minio" {
  zone_id = cloudflare_zone.kleister.id
  name    = "minio"
  value   = "ingress.webhippie.de"
  type    = "CNAME"
  proxied = false
}
