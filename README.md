# PQC-Docker
Dockerfiles to create a small test environment for Post Quantum Cryptography

This project is intended to help customers build docker containers that enable fast testing of post quantum algorithms

--Linux
Stage 1: Build SymCrypt and SymCrypt-OpenSSL.
Stage 2: Install Apache, PHP, and configure HTTPS with ML-KEM certificates using OpenSSL + OQS provider.
Result: A smaller runtime image with only the necessary binaries and web server.

Features:
SymCrypt + SymCrypt-OpenSSL built in Stage 1.
Apache2 + PHP web app for encryption testing.
HTTPS enabled with ML-KEM certificate (using OQS provider).
Multi-stage build keeps runtime image smaller.

To Run:
docker build -t pqc-web-app .
docker run -p 8080:80 -p 8443:443 pqc-web-app

Access:
HTTP: http://localhost:8080
HTTPS: https://localhost:8443 (accept self-signed cert warning).

--Windows 2025
