# terraform-data-newrelic-whitelist ![](https://img.shields.io/badge/license-MIT-blue.svg)

This module provides lists of the IP addresses and domains used by New Relic collectors (for example, https://collector.newrelic.com) for communicating with the New Relic agent installed on your server.

This is maintained against https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks

# Usage

```hcl
module "newrelic-whitelist" {
  source  = "captn3m0/newrelic-whitelist/data"
  version = "2020.01.22"
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

| Name                          | Description                                                                         |
| ----------------------------- | ----------------------------------------------------------------------------------- |
| apm_cidrs                     | List of all New Relic APM CIDRs. Whitelist for egress against 443                   |
| apm_cidrs_eu                  | List of New Relic APM CIDRs (EU). Whitelist for egress against 443                  |
| apm_cidrs_us                  | List of New Relic APM CIDRs (US). Whitelist for egress against 443                  |
| browser_domains               | List of all New Relic Browser application domains.                                  |
| browser_domains_eu            | List of New Relic Browser application domains (EU).                                 |
| browser_domains_us            | List of New Relic Browser application domains (US).                                 |
| infra_cidrs                   | List of all New Relic Infrastructure Agent CIDRs. Whitelist for egress against 443  |
| infra_cidrs_eu                | List of New Relic Infrastructure Agent CIDRs (EU). Whitelist for egress against 443 |
| infra_cidrs_us                | List of New Relic Infrastructure Agent CIDRs (US). Whitelist for egress against 443 |
| mobile_domains                | List of all New Relic Mobile Application domains.                                   |
| mobile_domains_eu             | List of New Relic Mobile application domains (EU).                                  |
| mobile_domains_us             | List of New Relic Mobile Application domains (US).                                  |
| synthetics_cidrs              | List of New Relic Synthetic Minion IPs as /32 CIDR for both US and EU accounts      |
| synthetics_cidrs_eu           | List of New Relic Synthetic Minion IPs as /32 CIDR for EU accounts                  |
| synthetics_cidrs_us           | List of New Relic Synthetic Minion IPs as /32 CIDR for US accounts                  |
| synthetics_ips                | List of New Relic Synthetic Minion IPs for both US and EU accounts                  |
| synthetics_ips_eu             | List of New Relic Synthetic Minion IPs for EU accounts                              |
| synthetics_ips_us             | List of New Relic Synthetic Minion IPs for US accounts                              |
| synthetics_private_cidrs_eu   | Synthetic Private Minion endpoint IPs as CIDR ranges for EU accounts                |
| synthetics_private_cidrs_us   | Synthetic Private Minion endpoint IPs as CIDR ranges for US accounts                |
| synthetics_private_domains_eu | Synthetic Private Minion endpoint Domains for EU accounts                           |
| synthetics_private_domains_us | Synthetic Private Minion endpoint Domains for US accounts                           |
| synthetics_private_ips_eu     | Synthetic Private Minion endpoint IPs for eu accounts                               |
| synthetics_private_ips_us     | Synthetic Private Minion endpoint IPs for US accounts                               |
| ticketing_cidrs               | Third-party ticketing integrations will be sent from these CIDRs                    |
| ticketing_cidrs_eu            | Same as ticketing_cidrs, but exclusively for EU accounts                            |
| ticketing_cidrs_us            | Same as ticketing_cidrs, but exclusively for US accounts                            |
| webhook_cidrs                 | New Relic-generated webhooks for alert policies will be sent from these CIDRs       |
| webhook_cidrs_eu              | Same as webhook_cidrs, but exclusively for EU accounts                              |
| webhook_cidrs_us              | Same as webhook_cidrs, but exclusively for US accounts                              |

# Versioning

This module is versioned as per the New Relic "Last Updated" date on [the docs website](https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks). The versioning scheme is `YYYY.MM.DD` (with zeros for padding). Changes are usually backwards compatible, but if any breaking changes are made (such as output name changes) between released versions, they will be noted below and in the release notes.

# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
