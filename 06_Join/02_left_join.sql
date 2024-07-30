/*--------------------------------- LEFT JOIN ON 1:1 RELATIONSHIP -------------------------------------*/

--Show left join between "users" and "dni" tables
SELECT * FROM users
--Which table will it join? R = dni
LEFT JOIN dni
ON users.id_users = dni.fk_id_users;

/*
    Show the left join between the "users" and "dni" tables, but only shows the "first name" and
    "dni number" columns
*/
SELECT users.first_name, dni.dni_number FROM users
--Which table will it join? R = dni
LEFT JOIN dni
ON users.id_users = dni.fk_id_users;
/*
    Simple form

    SELECT first_name, dni_number FROM users
    LEFT JOIN dni
    ON users.id_users = dni.fk_id_users;
*/

--Show left join between the "dni" and "users" tables (reverse order)
SELECT dni.dni_number, users.first_name FROM dni
--Which table will it join? R = users
LEFT JOIN users
ON users.id_users = dni.fk_id_users;

--Show users who know a programming language using left join
SELECT users.first_name, languages.name_language
FROM users
--Which table will it join? R = users
LEFT JOIN users_languages
ON users.id_users = users_languages.fk_id_users
--Which table will it join? R = languages
LEFT JOIN languages
ON users_languages.fk_id_language = languages.id_language;
