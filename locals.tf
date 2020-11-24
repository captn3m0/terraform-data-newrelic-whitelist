locals {
  apm = {
    us = [
      "162.247.240.0/22",
    ]

    eu = [
      "185.221.84.0/22",
    ]
  }

  apm_agent_domains = {
    us = [
      "collector*.newrelic.com",
    ]

    eu = [
      "collector*.eu01.nr-data.net"
    ]
  }

  infra_agent_domains = {
    us = [
      "infra-api.newrelic.com",
      "identity-api.newrelic.com",
      "infrastructure-command-api.newrelic.com",
      "log-api.newrelic.com",
      "metric-api.newrelic.com"
    ]

    eu = [
      "infra-api.eu.newrelic.com",
      "identity-api.eu.newrelic.com",
      "infrastructure-command-api.eu.newrelic.com",
      "log-api.eu.newrelic.com",
      "metric-api.eu.newrelic.com"
    ]
  }

  infra = {
    us = [
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

  api_us = [
    "50.31.164.0/24",
    "162.247.240.0/22",
  ]

  api_eu = [
    "158.177.65.64/29",
    "159.122.103.184/29",
    "161.156.125.32/28",
  ]

  synthetics_private_domains = {
    us = "synthetics-horde.nr-data.net"
    eu = "synthetics-horde.eu01.nr-data.net"
  }

  synthetics_private_ips = {
    us = [
      "13.248.153.51",
      "76.223.21.185",
    ]

    eu = [
      "185.221.86.57",
      "185.221.86.25",
    ]
  }

  # Documented at https://docs.newrelic.com/docs/synthetics/new-relic-synthetics/administration/synthetics-public-minion-ips#locations-labels
  # https://s3.amazonaws.com/nr-synthetics-assets/nat-ip-dnsname/production/ip.json
  # curl --silent https://s3.amazonaws.com/nr-synthetics-assets/nat-ip-dnsname/production/ip.json | jq ' .[] | .[]' | sort | sed  -z 's/\n/,\n/g'
  # Keep this list sorted.
  synthetics_us = [
    "13.114.248.197",
    "13.127.48.170",
    "13.127.97.140",
    "13.228.35.210",
    "13.228.39.146",
    "13.237.52.169",
    "13.239.163.169",
    "13.244.134.146",
    "13.244.44.41",
    "13.245.57.13",
    "13.48.110.136",
    "13.48.9.24",
    "13.53.195.221",
    "13.55.231.24",
    "13.55.72.115",
    "13.56.108.119",
    "13.56.137.180",
    "13.56.174.59",
    "13.56.215.207",
    "15.161.119.200",
    "15.161.69.157",
    "15.161.87.25",
    "157.175.116.90",
    "157.175.118.77",
    "157.175.21.254",
    "18.139.152.11",
    "18.139.186.140",
    "18.162.140.46",
    "18.162.37.58",
    "18.162.37.84",
    "18.194.77.136",
    "18.195.163.71",
    "18.196.119.136",
    "18.200.73.249",
    "18.217.159.174",
    "18.217.88.49",
    "18.221.231.23",
    "18.229.16.152",
    "18.229.8.13",
    "18.231.56.185",
    "3.0.242.34",
    "3.113.159.236",
    "3.114.36.82",
    "3.215.91.250",
    "3.218.236.95",
    "3.220.18.219",
    "3.221.145.110",
    "3.221.27.116",
    "34.201.89.115",
    "34.212.63.124",
    "34.216.201.131",
    "34.224.255.169",
    "34.241.198.127",
    "34.242.252.249",
    "34.253.119.85",
    "35.157.232.3",
    "35.158.225.167",
    "35.161.251.132",
    "35.168.141.9",
    "35.168.185.185",
    "35.177.175.106",
    "35.177.31.93",
    "35.178.22.102",
    "35.182.104.198",
    "3.9.187.63",
    "3.9.213.212",
    "3.9.92.122",
    "52.21.22.43",
    "52.36.251.118",
    "52.44.71.247",
    "52.47.138.207",
    "52.47.151.56",
    "52.47.183.1",
    "52.58.229.238",
    "52.60.83.48",
    "52.60.97.235",
    "52.67.114.110",
    "52.68.223.178",
    "52.76.65.141",
    "52.79.128.135",
    "52.79.210.83",
    "54.153.159.26",
    "54.200.187.189",
    "54.203.193.46",
    "54.227.245.241",
    "54.241.167.218",
    "54.241.52.158",
    "54.76.137.83",
    "54.79.127.20",
    "99.79.105.160",
    "99.81.135.174",
  ]

  # https://s3.amazonaws.com/nr-synthetics-assets/nat-ip-dnsname/eu/ip.json
  # curl --silent https://s3.amazonaws.com/nr-synthetics-assets/nat-ip-dnsname/eu/ip.json | jq ' .[] | .[]' | sort | sed  -z 's/\n/,\n/g'
  # Keep this list sorted
  synthetics_eu = [
    "13.124.210.74",
    "13.234.196.179",
    "13.235.112.208",
    "13.237.25.50",
    "13.244.152.204",
    "13.245.42.49",
    "13.245.47.145",
    "13.48.119.249",
    "13.48.122.131",
    "13.48.93.230",
    "13.52.82.190",
    "15.161.170.5",
    "15.161.19.109",
    "15.161.30.132",
    "15.188.0.93",
    "15.188.24.216",
    "157.175.106.232",
    "157.175.115.252",
    "157.175.27.172",
    "18.138.125.43",
    "18.139.249.51",
    "18.162.159.153",
    "18.162.240.143",
    "18.162.84.186",
    "18.194.190.77",
    "18.196.204.231",
    "18.229.104.97",
    "18.229.121.209",
    "3.10.3.62",
    "3.104.27.23",
    "3.113.168.207",
    "3.114.96.177",
    "3.130.155.242",
    "3.130.159.252",
    "3.13.7.11",
    "3.209.231.131",
    "3.221.162.190",
    "3.226.130.207",
    "3.226.166.29",
    "34.231.42.238",
    "34.246.126.141",
    "35.176.182.243",
    "35.177.225.27",
    "35.180.222.79",
    "35.182.62.100",
    "52.36.137.104",
    "52.41.176.146",
    "52.49.136.252",
    "52.55.5.95",
    "52.58.190.36",
    "52.64.34.29",
    "52.78.104.15",
    "54.194.249.4",
    "54.203.35.154",
    "54.241.225.13",
    "54.70.67.57",
    "99.79.171.209",
  ]
}
