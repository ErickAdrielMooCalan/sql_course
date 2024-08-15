--Start transaction (STEP 1: EXECUTE )
START TRANSACTION;
DELETE FROM users WHERE id_users = 14;

--Review and decide if you want to save or revert the changes using COMMIT or ROLLBACK (STEP 2: EXECUTE)
COMMIT; /*or*/ROLLBACK;