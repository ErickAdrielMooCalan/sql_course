/*
    Suppose we have a table called "users" with an id "id_users" and we want to create a new table to
    relate to the existing table "users"
*/
CREATE TABLE dni(
	id_dni INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_users INT,
    dni_number INT NOT NULL,
    UNIQUE(id_dni),
    --Indicate that "fk_id_users" is a foreign key and comes from the "users" table
    FOREIGN KEY(fk_id_users) REFERENCES users(id_users)
);

--Insert data into table
INSERT INTO dni (fk_id_users, dni_number) VALUES (1, 7521);
INSERT INTO dni (fk_id_users, dni_number) VALUES (2, 7522);
INSERT INTO dni (fk_id_users, dni_number) VALUES (3, 7523);
INSERT INTO dni (fk_id_users, dni_number) VALUES (7, 7524);