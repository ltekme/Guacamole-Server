# Guacamole Server with Docker Compose

A all-in-one "package" for running guacamole server on docker-compose

## Setup 

Run the folowing to create an nginx cert after cloning the repo and changing the directory to the cloned path

The Following packages are required:
- docker
- docker-compose
- openssl

```sh
# Setup Alpine (optional, but packages are required)
apk update && apk add docker docker-compose openssl && \
rc-service docker start && rc-update add docker && \

# Obtaina a copy of the compose file
wget https://github.com/ltekme/Guacamole-Server/archive/refs/heads/main.zip && \
unzip main.zip && cd Guacamole-Server-main && \

# Create Initial DB Schema and a Self-signed cretificate 
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgresql > initdb.sql && \
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt -subj "/O=GuacamoleServer" && \

# Start the Service
docker compose up -d
```

### Running without HTTPS (Not Recommended)

- Comment out the `web` service in the compose file.
- Uncomment the ports in `guacamole` service

## Deploying

```sh
docker compose up -d
```

The port for HTTPS portal is `8443`
The port for HTTP portal is `8080` if not running with HTTPS (see [Running without HTTPS (Not Recommended)](#running-without-https-not-recommended))

## After Deploy

CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD

The defult login is:

- Username : `guacadmin`

- Password : `guacadmin`

