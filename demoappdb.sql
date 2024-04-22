DROP DATABASE IF EXISTS demoappdb;

CREATE DATABASE demoappdb CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

DROP USER IF EXISTS 'demo_app_admin'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'demo_app_admin'@'localhost' IDENTIFIED BY 'secret_password';
GRANT ALL PRIVILEGES ON demoappdb.* TO 'demo_app_admin'@'localhost';

USE demoappdb;

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL primary key AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `auth_seed_value` varchar(16) DEFAULT NULL
);

