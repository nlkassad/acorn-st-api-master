#!/bin/bash

curl --include --request GET https://acorn-st-api.herokuapp.com/users/$ID \
  --header "Authorization: Token token=$TOKEN"
