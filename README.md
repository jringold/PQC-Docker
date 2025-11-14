# PQC-Docker
Dockerfiles to create PQC Linux

This projec is intended to help customers build docker containers that enable fast testing of post quantum algorithms

Builds SymCrypt and installs its shared library and headers.
Builds SymCrypt-OpenSSL using CMake and links it to SymCrypt.
Installs Apache2 + PHP and creates a simple web page:

Accepts text input.
Encrypts it using openssl_encrypt() (which now uses SymCrypt-backed OpenSSL).

Exposes port 80 for HTTP access.

To run this docker container:
docker build -t symcrypt-openssl-web .
docker run -p 8080:80 symcrypt-openssl-web

Then visit:
http://localhost:8080
Enter text → click Encrypt → see encrypted output.
