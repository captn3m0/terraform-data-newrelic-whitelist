output "apm_cidrs" {
  description = "List of all New Relic APM CIDRs. Whitelist for egress against 443"
  value       = ["${concat(local.apm["us"], local.apm["eu"])}"]
}

output "apm_cidrs_us" {
  description = "List of New Relic APM CIDRs (US). Whitelist for egress against 443"
  value       = ["${local.apm["us"]}"]
}

output "apm_cidrs_eu" {
  description = "List of New Relic APM CIDRs (EU). Whitelist for egress against 443"
  value       = ["${local.apm["eu"]}"]
}

output "apm_agent_domains" {
  description = "Wildcard domain endpoints used by APM agents (For both US and EU accounts)"
  value       = ["${concat(local.apm_agent_domains["us"], local.apm_agent_domains["eu"])}"]
}

output "apm_agent_domains_us" {
  description = "Wildcard domain endpoints used by APM agents (For US accounts)"
  value       = ["${local.apm_agent_domains["us"]}"]
}

output "apm_agent_domains_eu" {
  description = "Wildcard domain endpoints used by APM agents (For EU accounts)"
  value       = ["${local.apm_agent_domains["eu"]}"]
}

output "infra_agent_domains" {
  description = "In order to report data to New Relic, Infrastructure needs outbound access to these domains (For both US and EU accounts)"
  value       = ["${concat(local.infra_agent_domains["us"], local.infra_agent_domains["eu"])}"]
}

output "infra_agent_domains_us" {
  description = "In order to report data to New Relic, Infrastructure needs outbound access to these domains (For US accounts)"
  value       = ["${local.infra_agent_domains["us"]}"]
}

output "infra_agent_domains_eu" {
  description = "In order to report data to New Relic, Infrastructure needs outbound access to these domains (For EU accounts)"
  value       = ["${local.infra_agent_domains["eu"]}"]
}

output "infra_cidrs" {
  description = "List of all New Relic Infrastructure Agent CIDRs. Whitelist for egress against 443"
  value       = ["${concat(local.infra["us"], local.infra["eu"])}"]
}

output "infra_cidrs_us" {
  description = "List of New Relic Infrastructure Agent CIDRs (US). Whitelist for egress against 443"
  value       = ["${local.infra["us"]}"]
}

output "infra_cidrs_eu" {
  description = "List of New Relic Infrastructure Agent CIDRs (EU). Whitelist for egress against 443"
  value       = ["${local.infra["eu"]}"]
}

output "browser_domains" {
  description = "List of all New Relic Browser application domains."
  value       = ["${concat(local.browser["us"], local.browser["eu"])}"]
}

output "browser_domains_us" {
  description = "List of New Relic Browser application domains (US)."
  value       = ["${local.browser["us"]}"]
}

output "browser_domains_eu" {
  description = "List of New Relic Browser application domains (EU)."
  value       = ["${local.browser["eu"]}"]
}

output "mobile_domains" {
  description = "List of all New Relic Mobile Application domains."
  value       = ["${concat(local.mobile["us"], local.mobile["eu"])}"]
}

output "mobile_domains_us" {
  description = "List of New Relic Mobile Application domains (US)."
  value       = ["${local.mobile["us"]}"]
}

output "mobile_domains_eu" {
  description = "List of New Relic Mobile application domains (EU)."
  value       = ["${local.mobile["eu"]}"]
}

output "synthetics_ips" {
  description = "List of New Relic Synthetic Minion IPs for both US and EU accounts"

  value = [
    "${concat(local.synthetics_us, local.synthetics_eu)}",
  ]
}

output "synthetics_private_ips_us" {
  value       = ["${local.synthetics_private_ips["us"]}"]
  description = "Synthetic Private Minion endpoint IPs for US accounts"
}

output "synthetics_private_domains_us" {
  value       = ["${local.synthetics_private_domains["us"]}"]
  description = "Synthetic Private Minion endpoint  Domains for US accounts"
}

output "synthetics_private_cidrs_us" {
  value       = ["${formatlist("%s/32", local.synthetics_private_ips["us"])}"]
  description = "Synthetic Private Minion endpoint  IPs as CIDR ranges for US accounts"
}

output "synthetics_private_ips_eu" {
  value       = ["${local.synthetics_private_ips["eu"]}"]
  description = "Synthetic Private Minion endpoint  IPs for eu accounts"
}

output "synthetics_private_domains_eu" {
  value       = ["${local.synthetics_private_domains["eu"]}"]
  description = "Synthetic Private Minion endpoint Domains for EU accounts"
}

output "synthetics_private_cidrs_eu" {
  value       = ["${formatlist("%s/32", local.synthetics_private_ips["eu"])}"]
  description = "Synthetic Private Minion endpoint IPs as CIDR ranges for EU accounts"
}

output "synthetics_cidrs" {
  description = "List of New Relic Synthetic Minion IPs as /32 CIDR for both US and EU accounts"
  value       = ["${formatlist("%s/32", concat(local.synthetics_us, local.synthetics_eu))}"]
}

output "synthetics_ips_us" {
  description = "List of New Relic Synthetic Minion IPs for US accounts"
  value       = ["${local.synthetics_us}"]
}

output "synthetics_cidrs_us" {
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
  description = "Third-party ticketing integrations will be sent from these CIDRs (US and EU)"
  value       = ["${concat(local.api_us, local.api_eu)}"]
}

output "ticketing_cidrs_us" {
  description = "Third-party ticketing integrations will be sent from these CIDRs (US only)"
  value       = ["${local.api_us}"]
}

output "ticketing_cidrs_eu" {
  description = "Third-party ticketing integrations will be sent from these CIDRs (EU only)"
  value       = ["${local.api_eu}"]
}

# The webhook_* outputs are same as ticketing_

output "webhook_cidrs" {
  description = "New Relic-generated webhooks for alert policies will be sent from these CIDRs (US and EU)"
  value       = ["${concat(local.api_us, local.api_eu)}"]
}

output "webhook_cidrs_us" {
  description = "Same as webhook_cidrs, but exclusively for US accounts"
  value       = ["${local.api_us}"]
}

output "webhook_cidrs_eu" {
  description = "Same as webhook_cidrs, but exclusively for EU accounts"
  value       = ["${local.api_eu}"]
}

output "pixie_domains" {
  description = "Domain:Port combinations for Newrelic pixie integration for all customers"
  value       = ["${concat(local.pixie["common"], local.pixie["us"], local.pixie["eu"])}"]
}

output "pixie_domains_us" {
  description = "Domain:Port combinations for Newrelic pixie integration for US region customers"
  value       = ["${concat(local.pixie["common"], local.pixie["us"])}"]
}

output "pixie_domains_eu" {
  description = "Domain:Port combinations for Newrelic pixie integration for EU region customers"
  value       = ["${concat(local.pixie["common"], local.pixie["eu"])}"]
}

output "opentelemetry_origins" {
  description = "Host:Port combinations for all OpenTelemetry integrations (both US and EU customers)"
  value       = ["${concat(local.opentelemetry["us"], local.opentelemetry["eu"])}"]
}

output "opentelemetry_origins_us" {
  description = "Host:Port combinations for all OpenTelemetry integrations (For US only)"
  value       = ["${local.opentelemetry["us"]}"]
}

output "opentelemetry_origins_eu" {
  description = "Host:Port combinations for all OpenTelemetry integrations (For EU only)"
  value       = ["${local.opentelemetry["eu"]}"]
}
output "opentelemetry_cidrs" {
  description = "CIDRs for all OpenTelemetry integrations (both US and EU customers)"
  value       = ["${concat(local.opentelemetry["us_cidr"], local.opentelemetry["eu_cidr"])}"]
}

output "opentelemetry_cidrs_us" {
  description = "CIDRs for all OpenTelemetry integrations (For US only)"
  value       = ["${local.opentelemetry["us_cidr"]}"]
}

output "opentelemetry_cidrs_eu" {
  description = "CIDRs for all OpenTelemetry integrations (For EU only)"
  value       = ["${local.opentelemetry["eu_cidr"]}"]
}
