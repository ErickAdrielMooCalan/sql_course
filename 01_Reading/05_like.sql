--Select and show all users who start their email in "gmail, everything that comes before doesn't matter"
SELECT * FROM users WHERE email LIKE '%gmail.com';

--Select and show all users who start their email "an" everything that comes after doesn't matter
SELECT * FROM users WHERE email LIKE 'an%';

--Select and show all users what have an "@" in their email
SELECT * FROM users WHERE email LIKE '%@%';