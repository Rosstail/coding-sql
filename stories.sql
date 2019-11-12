CREATE DATABASE IF NOT EXISTS database_antho_ross CHARACTER set 'utf8';

/*CREER TABLES*/
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

/*INSCRIRE LES UTILISATEURS*/
INSERT INTO users (user_mail_adress, user_password, user_nickname, user_signup_date)
VALUES	('banana_slama@gmail.com', 'GottaGetaGrip', 'DK', '2019-11-12'),
		('ironuppercut@hotmail.fr', 'YouUglyMotherFucker', 'kingofskill', '2019-10-8'),
		('ilikebig@buts.lmao', 'PHPMESCOUILLES', 'toasty', '2015-03-12'),
		('jdg@trigger.fr', 'TAMERELACHAUSSETTE', 'tail', '1996-02-01'),
		('jimleprof@degym.com', 'uplayismeh', 'fuz3', '2010-11-12'),
		('sakura_tyson@lmao.com', 'Ohyoutoushmytrololol', 'pingas', '2019-10-8'),
		('sarahconnor@skynet.com', 'huehehehehe', 'sarah', '2014-06-27'),
		('hotline_miami@game.com', 'getAGRIIIIIIP', 'Jacket', '1876-06-04'),
		('streetsof_rage@gmail.fr', 'hahahaha', 'Mr.X', '2084-06-27'),
		('coding_factory@wanadoomdrtrolol.beleugiqueuh', 'mdrlabelgique', 'jacquouille', '1976-01-12');

/*DETRUIRE LA BASE
DROP DATABASE IF EXISTS database_antho_ross;*/