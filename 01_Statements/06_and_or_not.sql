--Show all users don't have an email called "alex@gmail.com"
SELECT * FROM users WHERE NOT email = 'alex@gmail.com';

--Show all users don't have an email called "alex@gmail.com" AND age equals 23
SELECT * FROM users WHERE NOT email = 'alex@gmail.com' AND age = 23;

--Show all users don't have an email called "alex@gmail.com" OR age equals 23
SELECT * FROM users WHERE NOT email = 'alex@gmail.com' OR age = 23;