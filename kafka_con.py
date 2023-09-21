from kafka import KafkaConsumer
import json

# initalize KafkaConsumer object
consumer = KafkaConsumer("cookie-logs")

# Loop while Kafka Broker sends information and display it
for msg in consumer:
    print(json.loads(msg.value))