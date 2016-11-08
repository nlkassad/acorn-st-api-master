#!/bin/bash

curl --include --request DELETE https://acorn-st-api.herokuapp.com/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
