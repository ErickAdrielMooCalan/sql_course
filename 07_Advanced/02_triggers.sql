--Create a new table to save the old emails
CREATE TABLE email_history(
	id_history INT  AUTO_INCREMENT NOT NULL,
	fk_id_user INT NOT NULL,
	email VARCHAR(100),
	UNIQUE(id_history),
	PRIMARY KEY(id_history),
	FOREIGN KEY(fk_id_user) REFERENCES users(id_users)
);

--Create a TRIGGER to save old emails of the users
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history(fk_id_user, email) VALUES(OLD.id_users, OLD.email);
    END IF;
END;