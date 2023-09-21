-- Terminal> mysql.server start
-- Terminal> mysql -h localhost -u root -p

CREATE DATABASE cookie_logs;

USE cookie_logs;

CREATE TABLE logs (
    id int NOT NULL AUTO_INCREMENT,
    mac_address text,
    session_seconds int,
    domain text,
    email text,
    host text,
    http_method text,
    ip text,
    uri text,
    PRIMARY KEY (id));