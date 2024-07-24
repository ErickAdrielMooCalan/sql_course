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