source ./config.sh

AUTH=$(echo -ne "$FROXLOR_API_KEY:$FROXLOR_API_SECRET" | base64 --wrap 0)

curl -v \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic $AUTH" \
  --request POST \
  --data  '{"command":"Emails.add","params":{"email_part":"info","domain":"ddsbkk.com","loginname":"ddsbkk"}}' \
  $API_DOMAIN
