# terraform-data-newrelic-whitelist ![](https://img.shields.io/badge/license-MIT-blue.svg)

This module provides lists of the IP addresses and domains used by New Relic collectors (for example, https://collector.newrelic.com) for communicating with the New Relic agent installed on your server.

This is maintained against https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks

# Usage

```hcl
module "newrelic-whitelist" {
  source  = "captn3m0/newrelic-whitelist/data"
  version = "2019.11.04"
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
| apm\_cidrs | List of all New Relic APM CIDRs. Whitelist for egress against 443 |
| apm\_cidrs\_eu | List of New Relic APM CIDRs (EU). Whitelist for egress against 443 |
| apm\_cidrs\_us | List of New Relic APM CIDRs (US). Whitelist for egress against 443 |
| browser\_domains | List of all New Relic Browser application domains. |
| browser\_domains\_eu | List of New Relic Browser application domains (EU). |
| browser\_domains\_us | List of New Relic Browser application domains (US). |
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
| ticketing\_cidrs | Third-party ticketing integrations will be sent from these CIDRs |
| ticketing\_cidrs\_eu | Same as ticketing_cidrs, but exclusively for EU accounts |
| ticketing\_cidrs\_us | Same as ticketing_cidrs, but exclusively for US accounts |
| webhook\_cidrs | New Relic-generated webhooks for alert policies will be sent from these CIDRs |
| webhook\_cidrs\_eu | Same as webhook_cidrs, but exclusively for EU accounts |
| webhook\_cidrs\_us | Same as webhook_cidrs, but exclusively for US accounts |


# Versioning

This module is versioned as per the New Relic "Last Updated" date on [the docs website](https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks). The versioning scheme is `YYYY.MM.DD` (with zeros for padding). Changes are usually backwards compatible, but if any breaking changes are made (such as output name changes) between released versions, they will be noted below and in the release notes.


# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
