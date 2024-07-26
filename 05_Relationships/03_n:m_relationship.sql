--To start, we create a new table called "language"
CREATE TABLE languages(
    id_language INT AUTO_INCREMENT PRIMARY KEY,
    name_language VARCHAR(30)NOT NULL
);

--Next we create another table to hold the foreign keys of two main tables.
CREATE TABLE users_languages(
    id_users_language INT AUTO_INCREMENT PRIMARY KEY,
    --It is important to set "NOT NULL" so that the relationship is complete
    fk_id_users INT NOT NULL,
    fk_id_language INT NOT NULL,
    FOREIGN KEY(fk_id_users) REFERENCES users(id_users),
    FOREIGN KEY(fk_id_language) REFERENCES languages(id_language),
    UNIQUE(fk_id_users, fk_id_language)
);

/*
    IMPORTANT
    If the "NOT NULL" constraint was not previously added, it can be fixed by modifying the 2 columns:

    ALTER TABLE users_languages
    MODIFY COLUMN fk_id_users INT NOT NULL;

    ALTER TABLE users_languages
    MODIFY COLUMN fk_id_language INT NOT NULL;
*/

--Insert into "languages" table
INSERT INTO languages (name_language) VALUES ('Php');
INSERT INTO languages (name_language) VALUES ('Java');
INSERT INTO languages (name_language) VALUES ('C++');
INSERT INTO languages (name_language) VALUES ('C#');
INSERT INTO languages (name_language) VALUES ('Assembler');
INSERT INTO languages (name_language) VALUES ('Kotlin');
INSERT INTO languages (name_language) VALUES ('Python');

--Insert into "users_language" table (relationship table)
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 1);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 2);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (1, 3);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (2, 1);
INSERT INTO users_languages (fk_id_users, fk_id_language) VALUES (3, 1);