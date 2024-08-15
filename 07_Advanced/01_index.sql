/*
    The main purpose of an index is to speed up queries that search for data based on the values ​​of
    the indexed columns.
*/

--Create an Index on the table "users" associated with the "fist_name" column
CREATE INDEX idx_first_name ON users(first_name);

--Create an Unique Index on the table "users" associated with the "fist_name" column
CREATE UNIQUE INDEX idx_first_name ON users(first_name);

--Create an Unique index on the table "users" associated with the "fist_name" and "last_name" columns
CREATE UNIQUE INDEX idx_first_last_name ON users(first_name, last_name);

--Query the "users" table to check performance
SELECT * FROM users WHERE first_name = 'Laura';

--Delete an Index
DROP INDEX idx_first_name ON users;