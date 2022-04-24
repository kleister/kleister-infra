resource "cloudflare_record" "github" {
  zone_id = cloudflare_zone.kleister.id
  name    = "_github-challenge-kleister-organization"
  value   = "09c5dbf919"
  type    = "TXT"
  proxied = false
}
