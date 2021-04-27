# terraform-data-newrelic-whitelist ![](https://img.shields.io/badge/license-MIT-blue.svg) ![GitHub issues](https://img.shields.io/github/issues/captn3m0/terraform-data-newrelic-whitelist) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

This module provides lists of the IP addresses and domains used by various New Relic agents and services (for example, https://collector.newrelic.com) for communicating with the New Relic agent installed on your server.

This is maintained against the following sources:

- https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks
- https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips

# Usage

```hcl
module "newrelic-whitelist" {
  source  = "captn3m0/newrelic-whitelist/data"
  version = "2020.11.13-1"
}

resource "aws_security_group_rule" "allow_all_to_newrelic" {
  type            = "egress"
  from_port       = 0
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks     = ["${module.newrelic-whitelist.cidr}"]
  security_group_id = "sg-123456"
}
```

## Outputs

| Name | Description |
|------|-------------|
| apm\_agent\_domains | Wildcard domain endpoints used by APM agents (For both US and EU accounts) |
| apm\_agent\_domains\_eu | Wildcard domain endpoints used by APM agents (For EU accounts) |
| apm\_agent\_domains\_us | Wildcard domain endpoints used by APM agents (For US accounts) |
| apm\_cidrs | List of all New Relic APM CIDRs. Whitelist for egress against 443 |
| apm\_cidrs\_eu | List of New Relic APM CIDRs (EU). Whitelist for egress against 443 |
| apm\_cidrs\_us | List of New Relic APM CIDRs (US). Whitelist for egress against 443 |
| browser\_domains | List of all New Relic Browser application domains. |
| browser\_domains\_eu | List of New Relic Browser application domains (EU). |
| browser\_domains\_us | List of New Relic Browser application domains (US). |
| infra\_agent\_domains | In order to report data to New Relic, Infrastructure needs outbound access to these domains (For both US and EU accounts) |
| infra\_agent\_domains\_eu | In order to report data to New Relic, Infrastructure needs outbound access to these domains (For EU accounts) |
| infra\_agent\_domains\_us | In order to report data to New Relic, Infrastructure needs outbound access to these domains (For US accounts) |
| infra\_cidrs | List of all New Relic Infrastructure Agent CIDRs. Whitelist for egress against 443 |
| infra\_cidrs\_eu | List of New Relic Infrastructure Agent CIDRs (EU). Whitelist for egress against 443 |
| infra\_cidrs\_us | List of New Relic Infrastructure Agent CIDRs (US). Whitelist for egress against 443 |
| mobile\_domains | List of all New Relic Mobile Application domains. |
| mobile\_domains\_eu | List of New Relic Mobile application domains (EU). |
| mobile\_domains\_us | List of New Relic Mobile Application domains (US). |
| synthetics\_cidrs | List of New Relic Synthetic Minion IPs as /32 CIDR for both US and EU accounts |
| synthetics\_cidrs\_eu | List of New Relic Synthetic Minion IPs as /32 CIDR for EU accounts |
| synthetics\_cidrs\_us | List of New Relic Synthetic Minion IPs as /32 CIDR for US accounts |
| synthetics\_ips | List of New Relic Synthetic Minion IPs for both US and EU accounts |
| synthetics\_ips\_eu | List of New Relic Synthetic Minion IPs for EU accounts |
| synthetics\_ips\_us | List of New Relic Synthetic Minion IPs for US accounts |
| synthetics\_private\_cidrs\_eu | Synthetic Private Minion endpoint IPs as CIDR ranges for EU accounts |
| synthetics\_private\_cidrs\_us | Synthetic Private Minion endpoint  IPs as CIDR ranges for US accounts |
| synthetics\_private\_domains\_eu | Synthetic Private Minion endpoint Domains for EU accounts |
| synthetics\_private\_domains\_us | Synthetic Private Minion endpoint  Domains for US accounts |
| synthetics\_private\_ips\_eu | Synthetic Private Minion endpoint  IPs for eu accounts |
| synthetics\_private\_ips\_us | Synthetic Private Minion endpoint IPs for US accounts |
| ticketing\_cidrs | Third-party ticketing integrations will be sent from these CIDRs (US and EU) |
| ticketing\_cidrs\_eu | Third-party ticketing integrations will be sent from these CIDRs (EU only) |
| ticketing\_cidrs\_us | Third-party ticketing integrations will be sent from these CIDRs (US only) |
| webhook\_cidrs | New Relic-generated webhooks for alert policies will be sent from these CIDRs (US and EU) |
| webhook\_cidrs\_eu | Same as webhook\_cidrs, but exclusively for EU accounts |
| webhook\_cidrs\_us | Same as webhook\_cidrs, but exclusively for US accounts |

# Versioning

This module is versioned as per the New Relic "Last Updated" date on [the docs website](https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks). The versioning scheme is `YYYY.MM.DD` (with zeros for padding). Changes are usually backwards compatible, but if any breaking changes are made (such as output name changes) between released versions, they will be noted below and in the release notes.

If another release has to be made against the same date, they will be suffixed with a `-1`, or `-2` etc.

## 2020.10.22

### Fixes

- `apm_domains` was mis-leading. Split it into `apm_agent_domains` and `infra_agent_domains`.

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
