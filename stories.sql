/*CREER BASE DE DONNEE DANS NEW*/
CREATE DATABASE IF NOT EXISTS database_antho_ross CHARACTER set 'utf8';

/*CREER TABLES DANS LA BDD*/
CREATE TABLE IF NOT EXISTS users (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_mail_adress VARCHAR(80) NOT NULL UNIQUE,
    user_password VARCHAR(191) NOT NULL,
    user_nickname VARCHAR(20) NOT NULL UNIQUE,
    user_postal_adress VARCHAR(50),
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

/*INSCRIRE LES UTILISATEURS DANS LA TABLE USERS*/
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

/*METTRE A JOUR LES UTILISATEURS*/
UPDATE users
SET user_postal_adress = 'Très loin vers le nord', user_postal_code = '75001', user_city = 'Paris', user_country = 'France', user_cellphone_number = '0600000000', user_phone_number = '0100000000'

/*INSCRIRE LES SERVICES DANS LA TABLE SERVICES*/
INSERT INTO services (user_id, service_name, service_description, service_postal_adress, service_postal_code, service_city, service_country, service_date_time, service_complementary_informations)
VALUES  ('1', 'Coding Factory Paris', 'La crême de la crême', '8 Avenue de la Porte de Champerret', '75017', 'Paris', 'France', '1996-04-01', NULL),
        ('2', 'Coding Factory Cergy', 'La priorité', '35 Boulevard du Port', '95000', 'Cergy', 'France', '1996-04-01', NULL),
        ('3', 'American Breakfast', 'That''s pretty good !', '17 Rue des Écoles', '75005', 'Paris', 'France', '1996-04-01', NULL),
        ('4', 'Parc des Expositions', 'JAPAN EXPO', '1 Place de la Porte de Versailles', '75015', 'Paris', 'France', '1996-04-01', NULL),
        ('5', 'Laser Quest Massy', 'Piou piou piou', '8 Rue du Buisson aux Fraises', '91300', 'Massy', 'France', '1996-04-01', NULL),
        ('6', 'Beach Bowling Bel Epine', '<STRIKE>', 'Centre Commercial Belle Epine', '94320', 'Bel Epine', 'France', '1996-04-01', NULL),
        ('7', 'Golf 18 trous', 'Allez...', 'Terrain de Golf', '44210', 'Pornic', 'France', '1996-04-01', NULL),
        ('8', 'Centre Commercial Vélizy 2', 'Tu ne ressortiras jamais riche !', '2 Avenue de l''Europe', '78140', 'Vélizy-Villacoublay', 'France', '1996-04-01', NULL),
        ('9', 'Château de Chambord', 'TRIBOULETTE !', 'Château', '41250', 'Chambord', 'France', '1996-04-01', NULL),
        ('10', 'L''Île Penotte', 'Rue aux coquillages muraux', 'Île Penotte', '95000', 'Les Sables d''Olonne', 'France', '1996-04-01', NULL);
/*DETRUIRE LA BASE*/
#DROP DATABASE IF EXISTS database_antho_ross;