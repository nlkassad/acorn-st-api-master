curl --include --request POST http://localhost:4741/appointments \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "user_id": "1",
      "slot_id": "1"
    }
  }'
