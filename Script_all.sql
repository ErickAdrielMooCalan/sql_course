CREATE TABLE users (
  id_users INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50),
  age INT,
  init_date DATE,
  email VARCHAR(100),
  PRIMARY KEY (id_users)
  );

INSERT INTO users (id_users, first_name, last_name, age, init_date, email)
VALUES
(1,'Erick','Moo',23,'2024-07-14','erickmoo@gmail.com'),
(2,'Alex','',20,'2016-01-22','alex@gmail.com'),
(3,'Ángel','Pérez',21,'2019-04-21','angelperez@gmail.com'),
(7,'Carl','Johnson',35,'2020-01-01','carljohnson@gmail.com'),
(8,'Daniel','',15,'2021-02-17',NULL),
(9,'Andrea',NULL,22,'2017-05-23',NULL),
(10,'Carolina','Sánchez',21,'2016-09-21','carlolina@outlock.com'),
(11,'Laura','',NULL,'2020-08-13',NULL),
(12,'Maria','Cauich',NULL,NULL,NULL),
(13,'Francisco','Ochoa',NULL,NULL,NULL);

CREATE TABLE dni(
	id_dni INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_users INT,
    dni_number INT NOT NULL,
    UNIQUE(id_dni),
    FOREIGN KEY(fk_id_users) REFERENCES users(id_users)
);

CREATE TABLE companies(
    id_company INT AUTO_INCREMENT PRIMARY KEY,
    name_company VARCHAR(50) NOT NULL
);

ALTER TABLE users
ADD fk_id_company INT;

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(fk_id_company) REFERENCES companies(id_company);

CREATE TABLE languages(
    id_language INT AUTO_INCREMENT PRIMARY KEY,
    name_language VARCHAR(30)NOT NULL
);

CREATE TABLE users_languages(
    id_users_language INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_users INT NOT NULL,
    fk_id_language INT NOT NULL,
    FOREIGN KEY(fk_id_users) REFERENCES users(id_users),
    FOREIGN KEY(fk_id_language) REFERENCES languages(id_language),
    UNIQUE(fk_id_users, fk_id_language)
);


INSERT INTO dni (fk_id_users, dni_number) VALUES (1, 7521);
INSERT INTO dni (fk_id_users, dni_number) VALUES (2, 7522);
INSERT INTO dni (fk_id_users, dni_number) VALUES (3, 7523);
INSERT INTO dni (fk_id_users, dni_number) VALUES (7, 7524);

INSERT INTO companies (name_company) VALUES ('Fill');
INSERT INTO companies (name_company) VALUES ('Street');
INSERT INTO companies (name_company) VALUES ('MVLC');
INSERT INTO companies (name_company) VALUES ('Sold House');
INSERT INTO companies (name_company) VALUES ('DataSearch');
INSERT INTO companies (name_company) VALUES ('CardRed');
INSERT INTO companies (name_company) VALUES ('Clean Eyes');
INSERT INTO companies (name_company) VALUES ('Computer System Doc');

UPDATE users SET fk_id_company = 1 WHERE id_users = 1;
UPDATE users SET fk_id_company = 2 WHERE id_users = 2;
UPDATE users SET fk_id_company = 3 WHERE id_users = 3;
UPDATE users SET fk_id_company = 1 WHERE id_users = 7;

INSERT INTO languages (name_language) VALUES ('Php');
INSERT INTO languages (name_language) VALUES ('Java');
INSERT INTO languages (name_language) VALUES ('C++');
INSERT INTO languages (name_language) VALUES ('C#');
INSERT INTO languages (name_language) VALUES ('Assembler');
INSERT INTO languages (name_language) VALUES ('Kotlin');
INSERT INTO languages (name_language) VALUES ('Python');

/*
    IMPORTANT
    If the "NOT NULL" constraint was not previously added into "users_languages", it can be fixed
    y modifying the 2 columns:

    ALTER TABLE users_languages
    MODIFY COLUMN fk_id_users INT NOT NULL;

    ALTER TABLE users_languages
    MODIFY COLUMN fk_id_language INT NOT NULL;
*/


INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 1);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 2);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 3);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (2, 1);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (3, 1);