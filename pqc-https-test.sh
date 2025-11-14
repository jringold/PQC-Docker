#!/bin/bash
# Test encryption via HTTPS
DATA="HelloPostQuantumWorld"
URL="https://localhost:8443"

 "Testing encryption with data: $DATA"
RESPONSE=$(curl --insecure -s -X POST -d "data=$DATA" $URL)
echo "Server Response:"
echo "$RESPONSE"
