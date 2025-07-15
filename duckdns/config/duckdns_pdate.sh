#!/bin/bash

# Check that DUCKDNS_TOKEN is set
if [[ -z "$DUCKDNS_TOKEN" ]]; then
  echo "Error: DUCKDNS_TOKEN environment variable is not set."
  exit 1
fi

# Check that DUCKDNS_SUBDOMAIN is set
if [[ -z "$DUCKDNS_SUBDOMAIN" ]]; then
  echo "Error: DUCKDNS_SUBDOMAIN environment variable is not set."
  exit 1
fi

# Get current external IP address
IP=$(curl -s ifconfig.me)

if [[ -z "$IP" ]]; then
  echo "Error: Could not fetch external IP address."
  exit 1
fi

# Call DuckDNS update API
RESPONSE=$(curl -s "https://www.duckdns.org/update?domains=$DUCKDNS_SUBDOMAIN&token=$DUCKDNS_TOKEN&ip=$IP")

# Check response
if [[ "$RESPONSE" == "OK" ]]; then
  echo "DuckDNS update successful: $IP"
else
  echo "DuckDNS update failed: $RESPONSE"
  exit 1
fi
