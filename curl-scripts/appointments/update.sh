#!/bin/bash

curl "http://localhost:4741/appointments/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "appointment": {
      "patient_id": "'"${PATIENT}"'",
      "doctor_id": "'"${DOCTOR}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
