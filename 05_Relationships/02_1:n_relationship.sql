/*
    First off we need to create a new table called "companies"
*/
CREATE TABLE companies(
    id_company INT AUTO_INCREMENT PRIMARY KEY,
    name_company VARCHAR(50) NOT NULL
);

--Create a new column called "fk_id_company" to hold foreign keys
ALTER TABLE users
ADD fk_id_company INT;

--Reference the foreign key to the primary key of the "companies" table
ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(fk_id_company) REFERENCES companies(id_company);

--Insert data into "companies" table
INSERT INTO companies (name_company) VALUES ('Fill');
INSERT INTO companies (name_company) VALUES ('Street');
INSERT INTO companies (name_company) VALUES ('MVLC');
INSERT INTO companies (name_company) VALUES ('Sold House');
INSERT INTO companies (name_company) VALUES ('DataSearch');
INSERT INTO companies (name_company) VALUES ('CardRed');
INSERT INTO companies (name_company) VALUES ('Clean Eyes');
INSERT INTO companies (name_company) VALUES ('Computer System Doc');

--Insert data into "users" table
UPDATE users SET fk_id_company = 1 WHERE id_users = 1;
UPDATE users SET fk_id_company = 2 WHERE id_users = 2;
UPDATE users SET fk_id_company = 3 WHERE id_users = 3;
UPDATE users SET fk_id_company = 1 WHERE id_users = 7;