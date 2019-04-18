# terraform-data-newrelic-whitelist ![](https://img.shields.io/badge/license-MIT-blue.svg)

This module provides lists of the IP addresses and domains used by New Relic collectors (for example, https://collector.newrelic.com) for communicating with the New Relic agent installed on your server.

This is maintained against https://docs.newrelic.com/docs/apm/new-relic-apm/getting-started/networks

# Usage

```hcl
module "newrelic-whitelist" {
  source  = "captn3m0/newrelic-whitelist/data"
  version = "1.0.0"
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

# Outputs

| Name                 | Description                                                                         |
|:---------------------|:------------------------------------------------------------------------------------|
| apm\_cidrs           | List of all New Relic APM CIDRs. Whitelist for egress against 443                   |
| apm\_cidrs\_eu       | List of New Relic APM CIDRs (EU). Whitelist for egress against 443                  |
| apm\_cidrs\_us       | List of New Relic APM CIDRs (US). Whitelist for egress against 443                  |
| browser\_domains     | List of all New Relic Browser application domains.                                  |
| browser\_domains\_eu | List of New Relic Browser application domains (EU).                                 |
| browser\_domains\_us | List of New Relic Browser application domains (US).                                 |
| infra\_cidrs         | List of all New Relic Infrastructure Agent CIDRs. Whitelist for egress against 443  |
| infra\_cidrs\_eu     | List of New Relic Infrastructure Agent CIDRs (EU). Whitelist for egress against 443 |
| infra\_cidrs\_us     | List of New Relic Infrastructure Agent CIDRs (US). Whitelist for egress against 443 |
| mobile\_domains      | List of all New Relic Mobile Application domains.                                   |
| mobile\_domains\_eu  | List of New Relic Mobile application domains (EU).                                  |
| mobile\_domains\_us  | List of New Relic Mobile Application domains (US).                                  |
| ticketing\_cidrs     |                                                                                     |
| webhook\_cidrs       |                                                                                     |



# LICENSE

Licensed under MIT. See [nemo.mit-license.org](https://nemo.mit-license.org/) for complete text.
