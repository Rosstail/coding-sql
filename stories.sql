/*CREER BASE DE DONNEE DANS NEW - STORY 1*/
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
    user_cellphone_number INT(15),
    user_phone_number INT(15),
    user_signup_date DATE,
    PRIMARY KEY (user_id)
    );

CREATE TABLE IF NOT EXISTS services (
    service_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    service_user_id INT UNSIGNED NOT NULL,
    service_name VARCHAR(40) NOT NULL,
    service_description VARCHAR(100) NOT NULL,
    service_postal_adress VARCHAR(50) NOT NULL,
    service_postal_code INT(5) UNSIGNED NOT NULL,
    service_city VARCHAR(20) NOT NULL,
    service_country VARCHAR(20) NOT NULL,
    service_date_time DATETIME NOT NULL,
    service_complementary_informations VARCHAR(50),
    PRIMARY KEY (service_id)
    );

CREATE TABLE IF NOT EXISTS users_services (
    users_services_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_services_service_id INT UNSIGNED NOT NULL,
    users_services_user_id INT UNSIGNED NOT NULL,
    users_services_datetime DATETIME NOT NULL,
    PRIMARY KEY (users_services_id)
    );

CREATE TABLE IF NOT EXISTS messages (
    message_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    message_expeditor_id INT UNSIGNED NOT NULL,
    message_receiver_id INT UNSIGNED NOT NULL,
    message_content TEXT NOT NULL,
    message_sent_date_time DATETIME NOT NULL,
    PRIMARY KEY (message_id)
    );

/*INSCRIRE LES UTILISATEURS DANS LA TABLE USERS - STORY 3*/
INSERT INTO users (user_mail_adress, user_password, user_nickname, user_signup_date)
VALUES	('banana_slama@gmail.com', 'GottaGetaGrip', 'DK', '2019-11-08'),
		('ironuppercut@hotmail.fr', 'YouUglyMotherFucker', 'kingofskill', '2019-11-09'),
		('ilikebig@buts.lmao', 'PHPMESCOUILLES', 'toasty', '2019-11-10'),
		('jdg@trigger.fr', 'TAMERELACHAUSSETTE', 'tail', '2019-11-11'),
		('jimleprof@degym.com', 'uplayismeh', 'fuz3', '2019-11-12'),
		('sakura_tyson@lmao.com', 'Ohyoutoushmytrololol', 'pingas', '2019-11-13'),
		('sarahconnor@skynet.com', 'huehehehehe', 'sarah', '2019-11-14'),
		('hotline_miami@game.com', 'getAGRIIIIIIP', 'Jacket', '2019-11-15'),
		('streetsof_rage@gmail.fr', 'hahahaha', 'Mr.X', '2019-11-16'),
		('coding_factory@wanadoomdrtrolol.beleugiqueuh', 'mdrlabelgique', 'jacquouille', '2019-11-17');

/*METTRE A JOUR LES UTILISATEURS - STORY 4*/
UPDATE users
SET user_postal_adress = 'Très loin vers le nord', user_postal_code = '75001', user_city = 'Paris', user_country = 'France', user_cellphone_number = '0600000000', user_phone_number = '0100000000'

/*INSCRIRE LES SERVICES DANS LA TABLE SERVICES - STORY 5*/
    INSERT INTO services (service_user_id, service_name, service_description, service_postal_adress, service_postal_code, service_city, service_country, service_date_time, service_complementary_informations)
    VALUES  ('1', 'Coding Factory Paris', 'La crême de la crême', '8 Avenue de la Porte de Champerret', '75017', 'Paris', 'France', '2019-11-10', NULL),
            ('2', 'Coding Factory Cergy', 'La priorité', '35 Boulevard du Port', '95000', 'Cergy', 'France', '2019-11-09', NULL),
            ('3', 'American Breakfast', 'That''s pretty good !', '17 Rue des Écoles', '75005', 'Paris', 'France', '2019-11-10', NULL),
            ('4', 'Parc des Expositions', 'JAPAN EXPO', '1 Place de la Porte de Versailles', '75015', 'Paris', 'France', '2019-11-11', NULL),
            ('5', 'Laser Quest Massy', 'Piou piou piou', '8 Rue du Buisson aux Fraises', '91300', 'Massy', 'France', '2019-11-12', NULL),
            ('6', 'Beach Bowling Bel Epine', '<STRIKE>', 'Centre Commercial Belle Epine', '94320', 'Bel Epine', 'France', '2019-11-13', NULL),
            ('7', 'Golf 18 trous', 'Allez...', 'Terrain de Golf', '44210', 'Pornic', 'France', '2019-11-14', NULL),
            ('8', 'Centre Commercial Vélizy 2', 'Tu ne ressortiras jamais riche !', '2 Avenue de l''Europe', '78140', 'Vélizy-Villacoublay', 'France', '2019-11-15', NULL),
            ('9', 'Château de Chambord', 'TRIBOULETTE !', 'Château', '41250', 'Chambord', 'France', '2019-11-16', NULL),
            ('10', 'L''Île Penotte', 'Rue aux coquillages muraux', 'Île Penotte', '95000', 'Les Sables d''Olonne', 'France', '2019-11-17', NULL);

/*INSCRIRE LES UTILISATEURS AU SERVICE - STORY 6*/
INSERT INTO users_services (users_services_user_id, users_services_service_id, users_services_datetime)
VALUES  ('1', '2', '2019-11-18 08:03:03'),
        ('2', '4', '2019-11-18 12:08:54'),
        ('3', '8', '2019-11-18 16:15:09'),
        ('4', '1', '2019-11-18 20:21:25'),
        ('5', '7', '2019-11-18 22:56:09'),
        ('6', '10', '2019-11-18 23:02:07'),
        ('7', '1', '2019-11-19 06:25:45'),
        ('8', '3', '2019-11-19 08:47:09'),
        ('9', '6', '2019-11-19 11:59:59'),
        ('10', '5', '2019-11-19 15:30:00'),
        ('4', '6', '2019-11-19 19:43:41'),
        ('6', '2', '2019-11-19 23:09:09');

/*EMETEUR/RECEPTER/CONTENU/DATE MESSAGE - STORY 7*/
INSERT INTO messages (message_expeditor_id, message_receiver_id, message_content, message_sent_date_time)
VALUES ('1', '3', 'Mon dîner a été mangé par les forces du mal de Ganon.','2019-11-19 23:43:23'),
      ('1', '6', 'Je pars pour Gamelon pour l''attaquer.','2019-11-20 06:49:56'),
      ('1', '9', 'Je vais prendre mon BOUCLIER pour me protéger.','2019-11-20 11:57:12'),
      ('3', '2', 'Je vais prendre mon BATMAN pour me protéger.','2019-11-20 11:58:04'),
      ('3', '5', 'Je vais prendre mon ÉPÉE pour me protéger.','2019-11-20 11:59:46'),
      ('3', '8', 'Je vais prendre LE MODE D''EMPLOI pour me protéger.','2019-11-20 12:15:54'),
      ('5', '1', 'Je vais prendre mon PRÉSERVATIF pour me protéger.','2019-11-20 12:27:11'),
      ('5', '6', 'Je vais prendre mon GRAPPIN pour me protéger.','2019-11-20 12:45:33'),
      ('5', '8', 'Je vais prendre mon FUSIL A POMPE pour me protéger.','2019-11-20 12:56:08'),
      ('6', '1', 'Je vais prendre mon HASHTAG pour me protéger.','2019-11-20 13:03:33'),
      ('6', '4', 'Je vais prendre mon GNOWAM pour me protéger.','2019-11-20 14:07:24'),
      ('6', '7', 'Je vais prendre mon SQUADELLAH pour me protéger.','2019-11-20 15:01:33'),
      ('7', '2', 'Je vais prendre mon DÎNER pour me protéger.','2019-11-20 15:33:09'),
      ('7', '6', 'Je vais prendre mon VENTILATEUR pour me protéger.','2019-11-20 15:55:13'),
      ('7', '9', 'Je vais prendre mon MAC pour me protéger.','2019-11-20 16:04:12'),
      ('8', '1', 'Je vais prendre mon BEURRE pour me protéger.','2019-11-20 16:23:43'),
      ('8', '3', 'Je vais prendre mon LANCE-GRENADE pour me protéger.','2019-11-21 09:03:33'),
      ('8', '6', 'Je vais prendre la TRIFORCE DU COURAGE pour me protéger.','2019-11-21 11:03:33'),
      ('8', '9', 'Je vais prendre ma TÊTE pour me protéger.','2019-11-21 12:03:33'),
      ('9', '1', 'Je vais prendre mon BOUCLIER pour me protéger.','2019-11-21 12:33:33'),
      ('9', '5', 'Je vais prendre mes GARDES DU CORPS pour me protéger.','2019-11-21 12:53:53'),
      ('9', '10', 'Je vais prendre le BUS pour me protéger.','2019-11-21 12:57:21'),
      ('10', '4', 'Je vais prendre GANON pour me protéger.','2019-11-21 13:05:12'),
      ('10', '7', '...','2019-11-22 02:03:04'),
      ('10', '8', 'Non, ça c''est nul à chier.','2019-11-22 10:00:00');

/*AFFICHER RECEVEUR, CONTENU TRIE PAR DATE/HEURE RECENT-> ANCIEN - STORY 8
Lancer ça dans le SQL de la BDD*/
SELECT message_receiver_id, message_content
FROM messages
ORDER BY message_sent_date_time DESC;

/*AFFICHER EXPEDITEUR RECEVEUR CONTENU TRIE PAR DATE/HEURE RECENT-> ANCIEN - STORY 9
Lancer ça dans le SQL de la BDD*/
SELECT message_expeditor_id, message_receiver_id, message_content
FROM messages
ORDER BY message_sent_date_time DESC;

/*DETRUIRE LA BASE*/
#DROP DATABASE IF EXISTS database_antho_ross;