--Group the maximum ages of users by age
SELECT MAX(age) FROM users GROUP BY age;

--Group and count the ages of the users
SELECT COUNT(age) FROM users GROUP BY age;

--Show the number of users of a specific age
SELECT COUNT(age),age FROM users GROUP BY age;

--Show the number of users of a specific age sorted in ascending order
SELECT COUNT(age),age FROM users GROUP BY age ORDER BY age ASC;

--Show the number of users of a specific age greater than 20 sorted in ascending order
SELECT COUNT(age),age FROM users WHERE age > 20 GROUP BY age ORDER BY age ASC;