--A view is a representation of a query in table form.

--Create a view to show all adult users
CREATE VIEW v_adult_users AS
SELECT first_name, age
FROM users
WHERE age >= 18;

--Query the created view
SELECT * FROM v_adult_users;

--Delete a view
DROP VIEW v_adult_users;