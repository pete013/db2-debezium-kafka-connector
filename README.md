This is a sample CDC setup using debezium-connector for db2 as source and kafka topic as sink.

Commands to follow:
```bash
# pre-requisites:
#  - curl
#  - docker

# to create and start the docker container services
export CP_VERSION=5.4.3
docker-compose up --build

# to stop the running docker container services
docker-compose stop

# to start the stopped docker container services
docker-compose start

# to stop and delete the docker container services
docker-compose down


```