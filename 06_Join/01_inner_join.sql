/*--------------------------------- INNER JOIN ON 1:1 RELATIONSHIP -------------------------------------*/


--Show information from the "users" and "dni" table
SELECT * FROM users
--Which table will it join? R = dni
INNER JOIN dni;

/*
    Its equivalent

    SELECT * FROM users
    JOIN dni;
*/

--Show users who have an assigned dni (union)
SELECT * FROM users
--Which table will it join? R = dni
INNER JOIN dni
ON users.id_users = dni.fk_id_users;

/*
    Its equivalent

    SELECT * FROM users
    JOIN dni
    ON users.id_users = dni.fk_id_users;
*/

--Show users who have an assigned dni in ascending order (union)
SELECT * FROM users
--Which table will it join? R = dni
INNER JOIN dni
ON users.id_users = dni.fk_id_users
ORDER BY age ASC;

--Show only the name of users with their ID who have an assigned dni in ascending order (union)
SELECT first_name, dni_number FROM users
--Which table will it join? R = dni
INNER JOIN dni
ON users.id_users = dni.fk_id_users
ORDER BY age ASC;



/*--------------------------------- INNER JOIN ON 1:N RELATIONSHIP -------------------------------------*/

--Show users who work in a company
SELECT companies.name_company, users.first_name, users.last_name FROM companies
--Which table will it join? R = users
INNER JOIN users
ON companies.id_company = users.fk_id_company;



/*--------------------------------- INNER JOIN ON N:M RELATIONSHIP -------------------------------------*/

--Show users who know a programming language
SELECT users.first_name, users.last_name, languages.name_language FROM users_languages
--Which table will it join? R = users
INNER JOIN users
ON users_languages.id_users_language  = users.id_users
--Which table will it join? R = languages
INNER JOIN languages
ON users_languages.id_users_language = languages.id_language;