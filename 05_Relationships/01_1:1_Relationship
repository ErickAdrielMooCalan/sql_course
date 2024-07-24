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