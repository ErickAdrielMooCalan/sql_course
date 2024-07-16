--Show all names and last names of the users in only one table
SELECT CONCAT(first_name, last_name) FROM users;

--Show all names and last names of the users in only one table with an alias
SELECT CONCAT('Name: ', first_name, ', Last name: ',last_name) AS 'Nombre completo' FROM users WHERE last_name IS NOT NULL;