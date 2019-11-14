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

output "synthetics_ips" {
  description = "List of New Relic Synthetic Minion IPs for both US and EU accounts"

  value = [
    "${concat(local.synthetics_us, local.synthetics_eu)}",
  ]
}

output "synthetics_cidrs" {
  description = "List of New Relic Synthetic Minion IPs as /32 CIDR for both US and EU accounts"
  value       = ["${formatlist("%s/32", concat(local.synthetics_us, local.synthetics_eu))}"]
}

output "synthetics_ips_us" {
  description = "List of New Relic Synthetic Minion IPs for US accounts"
  value       = ["${local.synthetics_us}"]
}

output "synthetics_cidr_us" {
  description = "List of New Relic Synthetic Minion IPs as /32 CIDR for US accounts"
  value       = ["${formatlist("%s/32", local.synthetics_us)}"]
}

output "synthetics_ips_eu" {
  description = "List of New Relic Synthetic Minion IPs for EU accounts"
  value       = ["$${local.synthetics_eu}"]
}

output "synthetics_cidrs_eu" {
  description = "List of New Relic Synthetic Minion IPs as /32 CIDR for EU accounts"
  value       = ["${formatlist("%s/32", local.synthetics_eu)}"]
}

output "ticketing_cidrs" {
  description = "Third-party ticketing integrations will be sent from these CIDRs"
  value       = ["${concat(local.ticketing_and_webhooks_us, local.ticketing_and_webhooks_eu)}"]
}

output "ticketing_cidrs_us" {
  description = "Same as ticketing_cidrs, but exclusively for US accounts"
  value       = ["${local.ticketing_and_webhooks_us}"]
}

output "ticketing_cidrs_eu" {
  description = "Same as ticketing_cidrs, but exclusively for EU accounts"
  value       = ["${local.ticketing_and_webhooks_eu}"]
}

# The webhook_* outputs are same as ticketing_

output "webhook_cidrs" {
  description = "New Relic-generated webhooks for alert policies will be sent from these CIDRs"
  value       = ["${concat(local.ticketing_and_webhooks_us, local.ticketing_and_webhooks_eu)}"]
}

output "webhook_cidrs_us" {
  description = "Same as webhook_cidrs, but exclusively for US accounts"
  value       = ["${local.ticketing_and_webhooks_us}"]
}

output "webhook_cidrs_eu" {
  description = "Same as webhook_cidrs, but exclusively for EU accounts"
  value       = ["${local.ticketing_and_webhooks_eu}"]
}
