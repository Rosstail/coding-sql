CREATE DATABASE IF NOT EXISTS database_antho_ross CHARACTER set 'utf8';
CREATE TABLE IF NOT EXISTS users (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_mail_adress VARCHAR(40) NOT NULL UNIQUE,
    user_password VARCHAR(191) NOT NULL,
    user_nickname VARCHAR(20) NOT NULL UNIQUE,
    user_postal_adress VARCHAR(30),
    user_postal_code INT(5) UNSIGNED,
    user_city VARCHAR(20),
    user_country VARCHAR(20),
    user_cellphone_number INT(11),
    user_phone_number INT(11),
    user_signup_date DATE,
    PRIMARY KEY (user_id)
    );
CREATE TABLE IF NOT EXISTS services (
    service_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    service_name VARCHAR(40) NOT NULL,
    service_description VARCHAR(100) NOT NULL,
    service_postal_adress VARCHAR(30) NOT NULL,
    service_postal_code INT(5) UNSIGNED NOT NULL,
    service_city VARCHAR(20) NOT NULL,
    service_country VARCHAR(20) NOT NULL,
    service_date_time DATETIME NOT NULL,
    service_complementary_informations VARCHAR(50),
    PRIMARY KEY (service_id)
    );
CREATE TABLE IF NOT EXISTS users_services (
    user_service_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    service_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (user_service_id)
    );
CREATE TABLE IF NOT EXISTS messages (
    message_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    message_expeditor_id INT UNSIGNED NOT NULL,
    message_receiver_id INT UNSIGNED NOT NULL,
    message_content TEXT NOT NULL,
    message_sent_date_time DATETIME NOT NULL,
    PRIMARY KEY (message_id)
    );
DROP DATABASE IF EXISTS database_antho_ross;