curl --include --request POST https://acorn-st-api.herokuapp.com/appointments \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "user_id": "1",
      "slot_id": "1"
    }
  }'
