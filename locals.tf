locals {
  apm = {
    us = [
      "50.31.164.0/24",
      "162.247.240.0/22",
    ]

    eu = [
      "185.221.84.0/22",
    ]
  }

  infra = {
    us = [
      "50.31.164.0/24",
      "162.247.240.0/22",
    ]

    eu = [
      "185.221.84.0/22",
    ]
  }

  browser = {
    us = [
      "bam.nr-data.net",
      "js-agent.newrelic.com",
    ]

    eu = [
      "eu01.nr-data.net",
      "bam.eu01.nr-data.net​",
    ]
  }

  mobile = {
    us = [
      "mobile-collector.newrelic.com",
      "mobile-crash.newrelic.com",
      "mobile-symbol-upload.newrelic.com",
    ]

    eu = [
      "mobile-collector.eu01.nr-data.net",
      "mobile-crash.eu01.nr-data.net",
      "mobile-symbol-upload.eu01.nr-data.net",
    ]
  }

  ticketing_and_webhooks = [
    "50.31.164.0/24",
    "162.247.240.0/22",
  ]
}
