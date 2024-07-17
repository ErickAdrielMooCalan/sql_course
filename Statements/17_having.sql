/*
    Show the count of all ages, but they are only shown if the count is greater than 1
    (there are 8 users with non-zero ages)
*/
SELECT COUNT(age) FROM users HAVING COUNT(age) > 1;

--Show and group rows by age whose count equals 2.
SELECT age, COUNT(age) AS 'Count age' FROM users GROUP BY age HAVING COUNT(age) = 2;