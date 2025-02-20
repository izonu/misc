#!/bin/bash

webhook_url="" # set this

message="$1"
username="$2"

payload=$(jq -n --arg content "$message" --arg username "$username" \
'{content: $content, username: $username}')

curl -H "Content-Type: application/json" \
-d "$payload" \
"$webhook_url"
}
