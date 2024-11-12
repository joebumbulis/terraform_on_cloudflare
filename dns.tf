resource "cloudflare_record" "terraform_managed_resource_4b752e4c067197db3f1cfacce3cdbdc4" {
  content = "20.88.188.200"
  name    = "terraformoncloudflare.com"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "3c7827a32e4219c64ad50cc275363d53"
}

resource "cloudflare_record" "terraform_managed_resource_d64ed9d0e34c399880d48a46dec92f5c" {
  content = "20.88.188.200"
  name    = "terraform"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "3c7827a32e4219c64ad50cc275363d53"
}

resource "cloudflare_record" "terraform_managed_resource_95aefc2f8b708090e1b98d06c47e92f3" {
  content = "20.88.188.200"
  name    = "variable-test"
  proxied = true
  ttl     = 1
  type    = "A"
  zone_id = "3c7827a32e4219c64ad50cc275363d53"
}

