/*
    In some database engines the "left join", "right join" can be found as:

    RIGHT OUTER JOIN
    LEFT OUTER JOIN
    FULL OUTER JOIN

*/



--Show right join between "users" and "dni" tables
SELECT * FROM users
--Which table will it join? R = dni
RIGHT JOIN dni
ON users.id_users = dni.fk_id_users;

/*
    Show the right join between the "users" and "dni" tables, but only shows the "first name" and
    "dni number" columns
*/
SELECT users.first_name, dni.dni_number FROM users
--Which table will it join? R = dni
RIGHT JOIN dni
ON users.id_users = dni.fk_id_users;
/*
    Simple form

    SELECT first_name, dni_number FROM users
    RIGHT JOIN dni
    ON users.id_users = dni.fk_id_users;
*/

--Show right join between the "dni" and "users" tables (reverse order)
SELECT dni.dni_number, users.first_name FROM dni
--Which table will it join? R = users
RIGHT JOIN users
ON users.id_users = dni.fk_id_users;

--Show users who know a programming language using right join
SELECT users.first_name, languages.name_language
FROM users
--Which table will it join? R = users_languages
RIGHT JOIN users_languages
ON users.id_users = users_languages.fk_id_users
--Which table will it join? R = users_languages
RIGHT JOIN languages
ON users_languages.fk_id_language = languages.id_language;
