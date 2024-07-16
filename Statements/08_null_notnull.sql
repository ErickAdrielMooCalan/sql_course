--Show all users who don't have an email
SELECT * FROM users WHERE email IS NULL;

--Show all users who have an email
SELECT * FROM users WHERE email IS NOT NULL;