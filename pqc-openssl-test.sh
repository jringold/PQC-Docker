#!/bin/bash
# Test ML-KEM certificate-cert.pem"# Test ML-KEM certificate and TLS handshake using OpenSSL CLI

echo "=== Checking certificate details ==="
openssl s_client -connect $SERVER:$PORT -provider oqs -provider default -cipher ALL \
    -verify_return_error </dev/null 2>/dev/null | openssl x509 -text -noout

echo "=== Testing TLS handshake with PQC support ==="
openssl s_client -connect $SERVER:$PORT -provider oqs -provider default \
    -cipher ALL -curves ML-KEM-1024 </dev/null


SERVER="localhost"
PORT="8443"
