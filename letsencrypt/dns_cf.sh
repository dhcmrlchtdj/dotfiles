#!/usr/bin/env bash

# Get your API key from https://www.cloudflare.com/a/account/my-account
API_KEY="..."
EMAIL="..."
CURL_HEADERS=( -s -H "X-Auth-Email: $EMAIL" -H "X-Auth-Key: $API_KEY" -H "Content-Type: application/json" )

# Strip only the top domain to get the zone id
DOMAIN=$(awk -F "." '{print $(NF-1)"."$NF}' <<< $CERTBOT_DOMAIN)

# Get the Cloudflare zone id
ZONE_EXTRA_PARAMS="status=active&page=1&per_page=20&order=status&direction=desc&match=all"
ZONE_ID=$(curl -X GET "https://api.cloudflare.com/client/v4/zones?name=$DOMAIN&$ZONE_EXTRA_PARAMS" \
    "${CURL_HEADERS[@]}" \
    | python -c "import sys,json;print(json.load(sys.stdin)['result'][0]['id'])")

# Create TXT record
CREATE_DOMAIN="_acme-challenge.$CERTBOT_DOMAIN"
curl -X POST "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records" \
    "${CURL_HEADERS[@]}" \
    --data '{"type":"TXT","name":"'"$CREATE_DOMAIN"'","content":"'"$CERTBOT_VALIDATION"'","ttl":120}'

# Sleep to make sure the change has time to propagate over to DNS
sleep 25
