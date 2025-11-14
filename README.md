# PQC-Docker
Dockerfiles to create PQC Linux

This project is intended to help customers build docker containers that enable fast testing of post quantum algorithms

Builds SymCrypt and installs its shared library and headers.
Builds SymCrypt-OpenSSL using CMake and links it to SymCrypt.
Installs Apache2 + PHP and creates a simple web page:

Accepts text input.
Encrypts it using openssl_encrypt() (which now uses SymCrypt-backed OpenSSL).

Exposes port 80 and 443 for HTTP and HTTPS access.

To Run these docker cintainers:
docker build -t symcrypt-openssl-web-ssl .
docker run -p 8080:80 -p 8443:443 symcrypt-openssl-web-ssl

Access:
HTTP: http://localhost:8080
HTTPS: https://localhost:8443 (you’ll need to accept the self-signed cert warning).

This will use a self-signed certificate and since it's using 
