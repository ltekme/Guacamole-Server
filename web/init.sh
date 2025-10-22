#!/bin/sh
set -e

CERT_DIR="/certs"
KEY="$CERT_DIR/nginx.key"
CRT="$CERT_DIR/nginx.crt"

mkdir -p "$CERT_DIR"

if [[ -e "$KEY" && -e "$CRT" ]]; then
    echo "Key exists in $CERT_DIR"
else
    echo Certs and keys not found. Creating at $CERT_DIR
    
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout "$KEY" -out "$CRT" -subj "/O=GuacamoleServer"

    echo "Created $KEY and $CRT"
fi

echo Starting Nginx Server
exec nginx -g "daemon off;"