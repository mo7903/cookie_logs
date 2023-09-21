import json
from kafka import KafkaProducer
from faker import Faker
from faker.providers import internet
from random import randint

def generate_log():
    """Generate website logs using faker for testing""" 
    user = Faker()
    user.add_provider(internet)
    log = {
        "host": user.hostname(),
        "domain": user.domain_name(),
        "http_method": user.http_method(),
        "mac_address": user.mac_address(),
        "uri": user.uri_path(),
        "session_seconds": randint(1, 10000),
        "email": user.ascii_email()
    }
    return log

# Initialize KafkaProducer object and configuring it to send JSON
producer = KafkaProducer(value_serializer=lambda v: json.dumps(v, indent=4).encode("utf-8"))

# Sends data to Kafka Broker
for i in range(1000):
    log = generate_log()
    producer.send("cookie-logs", log)
    producer.flush()