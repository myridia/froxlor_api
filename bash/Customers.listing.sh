source ./config.sh

AUTH=$(echo -ne "$FROXLOR_API_KEY:$FROXLOR_API_SECRET" | base64 --wrap 0)

curl -v \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic $AUTH" \
  --request POST \
  --data  '{"command":"Customers.listing","params":["show_usages":1]}' \
  $API_DOMAIN
