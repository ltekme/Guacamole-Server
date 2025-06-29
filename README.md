# Guacamole Server with Docker Compose

A all-in-one "package" for running guacamole server on docker-compose

## Preperation

Run the folowing to create an nginx cert after cloning the repo and changing the directory to the cloned path

```sh
# Get initial database schema for guacamole
docker run --rm guacamole/guacamole ./initdb.sh --postgresql > initdb.sql

# Create A self Signed Certificat
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
```

### Running without HTTPS (Not Recommended)

- Comment out the `web` service in the compose file.
- Uncomment the ports in `guacamole` service

## Deploying

```sh
docker compose up -d
```

## After Deploy

CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD

The defult login is 

- Username : `guacadmin` 
- Password : `guacadmin` 

