This is a sample CDC setup for db2 as source and kafka topic as sink.

Commands to follow:
```bash
# pre-requisites:
#  - curl
#  - docker

# to create and start the docker container services
export CP_VERSION=6.0.0
docker-compose up --build

# to stop the running docker container services
docker-compose stop

# to start the stopped docker container services
docker-compose start

# to stop and delete the docker container services
docker-compose down

docker run -itd --name testdb2 --privileged=true -p 50000:50000 -e LICENSE=accept -e DB2INST1_PASSWORD=password -e DBNAME=testdb -v ${PWD}/data/db2/database:/database ibmcom/db2:11.5.0.0
```