/*
    In some database engines the "left join", "right join", "union" can be found as:

    RIGHT OUTER JOIN
    LEFT OUTER JOIN
    FULL OUTER JOIN

    NOTE: In MySQL there isn't a function called "FULL JOIN", therefore, we need to use a
    function called "UNION"


*/



--Show "Users ID" and "Users FK From Dni" using UNION (FULL JOIN)
SELECT users.id_users AS 'Users ID', dni.fk_id_users AS 'Users FK From Dni'
FROM users
LEFT JOIN dni
ON users.id_users = dni.fk_id_users
UNION
SELECT users.id_users AS 'Users ID', dni.fk_id_users AS 'Users FK From Dni'
FROM users
RIGHT JOIN dni
ON users.id_users = dni.fk_id_users;

--Show all columns using UNION (FULL JOIN) between "users" and "dni" tables
SELECT *
FROM users
LEFT JOIN dni
ON users.id_users = dni.fk_id_users
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.id_users = dni.fk_id_users;