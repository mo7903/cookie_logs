# Start Zookeeper server
cd {KAFKA_HOME/libexec}
bin/zookeeper-server-start.sh config/zookeeper.properties

# Start Kafka Broker
cd {KAFKA_HOME/libexec}
bin/kafka-server-start.sh config/server.properties

# Create Kafka Topic and Producer server
cd {KAFKA_HOME/libexec}
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic cookie_logs

# OPTIONAL FOR TESTING: Create Kafka Consumer to receive data
cd {KAFKA_HOME/libexec}
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic cookie_logs --from-beginning

# Start Apache NiFi
{NIFI_HOME}/libexec/bin/nifi.sh start
