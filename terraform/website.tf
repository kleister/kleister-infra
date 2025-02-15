resource "cloudflare_dns_record" "root" {
  zone_id = cloudflare_zone.kleister.id
  name    = "@"
  content = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}

resource "cloudflare_dns_record" "www" {
  zone_id = cloudflare_zone.kleister.id
  name    = "www"
  content = "kleister-docs.netlify.com"
  type    = "CNAME"
  proxied = false
  ttl     = 1
}
