/*
    A stored procedure in informal words is like saving a query to your favorites to use later
*/

--Create a storage procedure to show all users
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END//
DELIMITER ;


--Create a storage procedure with parameters
DELIMITER //
CREATE PROCEDURE p_age_users(IN p_age INT)
BEGIN
    SELECT * FROM users WHERE age = p_age;
END//
DELIMITER ;


--Call a store procedure
CALL p_all_users;


--Call a storage procedure using parameters
CALL p_age_users(20);


--Delete a storage procedure
DROP PROCEDURE p_all_users;