#!/bin/bash

curl "http://localhost:4741/appointments/${ID}" \
  --include \
  --request DELETE \

echo
