--Sort and show all age-related items
SELECT * FROM users ORDER BY age;

--Sort and show all age-related items in ascending order.
SELECT * FROM users ORDER BY age ASC;

--Sort and show all age-related items in descending order.
SELECT * FROM users ORDER BY age DESC;

--combination between order by and where
SELECT * FROM users WHERE email = 'alex@gmail.com' ORDER BY age DESC;