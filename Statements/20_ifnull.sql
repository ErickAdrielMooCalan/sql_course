--Show and change null values for "0"
SELECT first_name, last_name, IFNULL(age, 0) FROM users;

--Show and change null values for a text string
SELECT first_name, last_name, IFNULL(age, 'No age assigned') AS 'Age of the users' FROM users;