--Show only 2 rows from users table
SELECT * FROM users LIMIT 2;

--Combining multiple clauses with LIMIT
SELECT * FROM users WHERE NOT email = 'alex@gmail.com' OR age = 23 LIMIT 2;