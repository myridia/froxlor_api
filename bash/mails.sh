#!/bin/bash
source ./config.sh
AUTH=$(echo -ne "$FROXLOR_API_KEY:$FROXLOR_API_SECRET" | base64 --wrap 0)

while IFS="," read -r col1 col2 col3 col4 col5
do
  echo "user: $col1"
  echo "mail: $col2"
  echo "pass: $col3"
  echo "email_part: $col4"
  echo "domain: $col5"
  echo 'domain: "'"$col5"'"  ' 
  echo ""

  
curl -v \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic $AUTH" \
  --request POST \
  --data  '{"command":"Emails.add","params":{"email_part":"'"$col4"'","domain":"'"$col5"'","loginname":"'"$col1"'"}}' \
  $API_DOMAIN

curl -v \
  --header "Content-Type: application/json" \
  --header "Authorization: Basic $AUTH" \
  --request POST \
  --data  '{"command":"EmailAccounts.add","params":{"id":"'"$col2"'","email_password":"'"$col3"'","loginname":"'"$col1"'"}}' \
  $API_DOMAIN

done < mails.csv





