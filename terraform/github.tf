resource "cloudflare_dns_record" "github" {
  zone_id = cloudflare_zone.kleister.id
  name    = "_github-challenge-kleister-organization"
  content = "09c5dbf919"
  type    = "TXT"
  proxied = false
  ttl     = 1
}
