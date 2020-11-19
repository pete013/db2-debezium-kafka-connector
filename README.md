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

# curl commands to check status of conector
curl -i -X POST -H "Accept: application/json" -H "Content-Type: application/json" http://localhost:8083/connectors -d @db2-connector-source.json
curl -i -X GET -H "Accept: application/json" http://localhost:8083/connectors/db2-connector-source
curl -i -X GET -H "Accept: application/json" http://localhost:8083/connectors/db2-connector-source/status
curl -i -X DELETE -H "Accept: application/json" http://localhost:8083/connectors/db2-connector-source

# db2 cli shell command
docker exec -it db2 bash -c "su - db2inst1"

# kafka topic commands
docker exec -it kafkacat kafkacat -b kafka:29092 -t testdb.DB2INST1.ORDERS -C
docker exec -it kafkacat kafkacat -b kafka:29092 -L

kafka-console-consumer --bootstrap-server kafka:29092 --topic testdb.DB2INST1.ORDERS --from-beginning
kafka-topics --zookeeper zookeeper:2181 --list
```

Reference links:
- https://github.com/debezium/debezium-incubator/blob/v1.3.1.Final/debezium-connector-db2/src/test/docker/db2-cdc-docker/Dockerfile
- https://medium.com/@naridnevahgar/log-based-cdc-between-db2-mysql-using-debezium-7318e5195565
  - https://github.com/naridnevahgar/cdc-debezium-db2-mysql/blob/master/dz.txt
- https://debezium.io/documentation/reference/connectors/db2.html
