#!/bin/bash



curl --include --request POST http://localhost:4741/slots \
  --header "Content-Type: application/json" \
  --data '{
    "slot": {
      "time_block": "2016-11-09 09:00"
    }
  }'

  curl --include --request POST http://localhost:4741/slots \
    --header "Content-Type: application/json" \
    --data '{
      "slot": {
        "time_block": "2016-11-09 13:00"
      }
    }'
