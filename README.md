# Guacamole Server with Docker Compose

A all-in-one "package" for running guacamole server on docker-compose

## Setup 

Run the folowing to create an nginx cert after cloning the repo and changing the directory to the cloned path

The Following packages are required:
- docker
- docker-compose

```sh
# Setup Alpine (optional, but packages are required)
apk update && apk add docker docker-compose && \
rc-service docker start && rc-update add docker && \

wget https://github.com/ltekme/Guacamole-Server/archive/refs/heads/main.zip && \
unzip main.zip && cd Guacamole-Server-main && \

docker compose up -d
```

## Deploying

```sh
# Obtaina a copy of the compose file
wget https://github.com/ltekme/Guacamole-Server/archive/refs/heads/main.zip && \
unzip main.zip && cd Guacamole-Server-main && \
docker compose up -d
```

If nothing goes wrong, the web interface can be accessed on`https://{host}:8443`

## After Deploy

CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD
CHANGE THE DEFAULT USER `guacadmin` PASSWORD

The defult login is:

- Username : `guacadmin`

- Password : `guacadmin`


## Recordings

| Screen Recording                    | Param                                     |
| ----------------------------------- | ----------------------------------------- |
| Recording path                      | ${HISTORY_PATH}                           |
| Recording name                      | ${HISTORY_UUID}-${GUAC_DATE}-${GUAC_TIME} |
| Automatically create recording path | Checked                                   |


## RDP File Transfer

| Device Redirection         | Param                   |
| -------------------------- | ----------------------- |
| Enable drive               | true                    |
| Drive name                 | share                   |
| Drive path                 | /share/${GUAC_USERNAME} |
| Automatically create drive | checked                 |
