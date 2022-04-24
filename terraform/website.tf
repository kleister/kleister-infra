resource "cloudflare_record" "root" {
  zone_id = cloudflare_zone.kleister.id
  name    = "@"
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
