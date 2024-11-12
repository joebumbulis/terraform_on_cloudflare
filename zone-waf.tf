resource "cloudflare_ruleset" "zone_level_managed_waf" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_firewall_managed"
  zone_id = var.cloudflare_zone_id

  rules {
    action = "skip"
    action_parameters {
        ruleset = "current"
    }
    logging {
      enabled = true
    }
    expression = "(cf.zone.name eq \"<your zone name>\" and http.request.uri.query contains \"skip=true\")"
    description = "skip all rulesets"
    enabled = false
  }

  rules {
    action = "execute"
    action_parameters {
      id      = "efb7b8c949ac4650a09736fc376e9aee"
      version = "latest"
    }
    enabled    = true
    expression = "true"
  }
}