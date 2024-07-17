--Shows whether users are older or not, using cases.
SELECT *,
CASE
    WHEN age > 17 THEN 'He/She is older'
    ELSE 'He/She is not older'
END AS 'Ages older'
FROM users;

--Shows whether users are older or not, using cases adding more cases
SELECT *,
CASE
    WHEN age > 18 THEN 'He/She is older'
    WHEN age = 18 THEN 'You recently turned 18'
    ELSE 'He/She is not older'
END AS 'Ages older'
FROM users;

--Shows whether users are older or not, using cases with boolean result.
SELECT *,
CASE
    WHEN age > 17 THEN True
    ELSE False
END AS 'Ages older'
FROM users;