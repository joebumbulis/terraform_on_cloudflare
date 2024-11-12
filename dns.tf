# Add a record to the domain
resource "cloudflare_record" "terraform1" {
  zone_id = var.cloudflare_zone_id
  name    = "terraform"
  content = "20.88.188.200"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "variable-test" {
  zone_id = var.cloudflare_zone_id
  name    = "variable-test"
  content = "20.88.188.200"
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = "20.88.188.200"
  type    = "A"
  proxied = true
}