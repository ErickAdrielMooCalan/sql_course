--To start, we create a new table called "language"
CREATE TABLE languages(
    id_language INT AUTO_INCREMENT PRIMARY KEY,
    name_language VARCHAR(30)NOT NULL
);

--Next we create another table to hold the foreign keys of two main tables.
CREATE TABLE users_languages(
    id_users_language INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_users INT,
    fk_id_language INT,
    FOREIGN KEY(fk_id_users) REFERENCES users(id_users),
    FOREIGN KEY(fk_id_language) REFERENCES languages(id_language),
    UNIQUE(fk_id_users, fk_id_language)
);

--this is a test 2 run