# Web Data Ingestion Pipeline with Apache NiFi, Kafka, and MySQL

This project implements a scalable web data ingestion pipeline using Apache NiFi, Kafka, and MySQL. It captures website session cookies and logs, stores the data in a MySQL database, and intelligently routes specific data subsets to designated destinations.

## Installation

Before getting started, ensure that you have the following requirements installed on your system:

- **Apache NiFi**: Download and install Apache NiFi from [https://nifi.apache.org/download.html](https://nifi.apache.org/download.html).

- **Kafka**: Install Apache Kafka by following the instructions at [https://kafka.apache.org/quickstart](https://kafka.apache.org/quickstart).

- **Python**: Ensure you have Python installed on your system. You can download it from [https://www.python.org/downloads/](https://www.python.org/downloads/).

- **kafka-python library**: Install the kafka-python library using pip: ```pip install kafka-python```

- **Zookeeper**: Kafka requires ZooKeeper. You can download and install ZooKeeper from [https://zookeeper.apache.org/releases.html](https://zookeeper.apache.org/releases.html).

- **Java**: Make sure you have Java (JRE or JDK) installed. You can download it from [https://www.oracle.com/java/technologies/javase-downloads.html](https://www.oracle.com/java/technologies/javase-downloads.html).

- **MySQL**: Install MySQL, and configure it as needed. You can download MySQL from [https://dev.mysql.com/downloads/installer/](https://dev.mysql.com/downloads/installer/).

## Usage

### Using Bash Commands:

1. **Set Up Kafka and Zookeeper**:
   - Start Zookeeper and Kafka Broker.

2. **Kafka Topic and Producer**:
   - Create the "cookie_logs" Kafka topic.
   - Optionally, start a Kafka Producer server for manual data production.

3. **Optional: Create Kafka Consumer**:
   - Optionally, create a Kafka Consumer for testing and monitoring data.

4. **Start Apache NiFi**:
   - Launch the Apache NiFi server for data consumption and processing.
  
### Using Python `kafka_prod.py`:

1. **Generate Website Logs**:
   - Use `kafka_prod.py` to create synthetic website logs with Faker.

2. **Initialize Kafka Producer**:
   - Configure a Kafka Producer to send data as JSON to Kafka.

3. **Send Data to Kafka**:
   - Execute the script to send 1000 generated log entries to the "cookie-logs" Kafka topic.

### Using `mysql_commands`:

1. **Start MySQL Server**:
   - Start MySQL server based on your system's requirements.

2. **Connect to MySQL**:
   - Use the `mysql` command to connect to the MySQL server with credentials.

3. **Create Database and Table**:
   - Execute SQL commands to create the `cookie_logs` database and define the `logs` table.
  
### Import NiFi Pipeline XML:

- Import the NiFi pipeline XML file `cookie_logs.xml` to set up the dataflow for processing and storing the ingested data.

These steps will help you set up and run your web data ingestion pipeline efficiently. Ensure that you have the necessary dependencies installed before proceeding.
