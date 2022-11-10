#!/bin/bash
hugo

hugo deploy

curl -X POST "https://api.cloudflare.com/client/v4/zones/bee7fc1486862e8b941e4526c6d1cc14/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'
