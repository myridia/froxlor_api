source ./config.sh

AUTH=$(echo -ne "$FROXLOR_API_KEY:$FROXLOR_API_SECRET" | base64 --wrap 0)

curl -v \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic $AUTH" \
  --request POST \
  --data  '{"command":"EmailAccounts.add","params":{"id":"info@ddsbkk.com","email_password":"password","loginname":"ddsbkk"}}' \
  $API_DOMAIN
