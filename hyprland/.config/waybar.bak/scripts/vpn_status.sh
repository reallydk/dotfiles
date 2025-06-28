#!/bin/bash

# Get active VPNs (type is 'vpn' or 'wireguard'), exclude 'killswitch' and 'dummy'
vpn_name=$(nmcli -t -f NAME,TYPE,DEVICE connection show --active | \
    grep -E 'vpn|wireguard' | \
    grep -vE 'killswitch|dummy' | \
    cut -d: -f1)

if [ -n "$vpn_name" ]; then
    echo "{\"text\": \"  $vpn_name\", \"tooltip\": \"VPN Active: $vpn_name\", \"class\": \"active\"}"
else
    # echo "{\"text\": \"\", \"tooltip\": \"No active VPN connection\", \"class\": \"inactive\"}"
    echo "{}"
fi

