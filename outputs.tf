output "apm_cidrs" {
  description = "List of all New Relic APM CIDRs. Whitelist for egress against 443"

  value = ["${concat(local.apm["us"], local.apm["eu"])}"]
}

output "apm_cidrs_us" {
  description = "List of New Relic APM CIDRs (US). Whitelist for egress against 443"

  value = ["${local.apm["us"]}"]
}

output "apm_cidrs_eu" {
  description = "List of New Relic APM CIDRs (EU). Whitelist for egress against 443"

  value = ["${local.apm["eu"]}"]
}

output "infra_cidrs" {
  description = "List of all New Relic Infrastructure Agent CIDRs. Whitelist for egress against 443"

  value = ["${concat(local.infra["us"], local.infra["eu"])}"]
}

output "infra_cidrs_us" {
  description = "List of New Relic Infrastructure Agent CIDRs (US). Whitelist for egress against 443"

  value = ["${local.infra["us"]}"]
}

output "infra_cidrs_eu" {
  description = "List of New Relic Infrastructure Agent CIDRs (EU). Whitelist for egress against 443"

  value = ["${local.infra["eu"]}"]
}

output "browser_domains" {
  description = "List of all New Relic Browser application domains."

  value = ["${concat(local.browser["us"], local.browser["eu"])}"]
}

output "browser_domains_us" {
  description = "List of New Relic Browser application domains (US)."

  value = ["${local.browser["us"]}"]
}

output "browser_domains_eu" {
  description = "List of New Relic Browser application domains (EU)."

  value = ["${local.browser["eu"]}"]
}

output "mobile_domains" {
  description = "List of all New Relic Mobile Application domains."

  value = ["${concat(local.mobile["us"], local.mobile["eu"])}"]
}

output "mobile_domains_us" {
  description = "List of New Relic Mobile Application domains (US)."

  value = ["${local.mobile["us"]}"]
}

output "mobile_domains_eu" {
  description = "List of New Relic Mobile application domains (EU)."

  value = ["${local.mobile["eu"]}"]
}

output "ticketing_cidrs" {
  value = ["${local.ticketing_and_webhooks}"]
}

output "webhook_cidrs" {
  value = ["${local.ticketing_and_webhooks}"]
}
