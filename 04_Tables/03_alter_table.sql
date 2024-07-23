--Add a new column to a table
ALTER TABLE person_8
ADD last_name VARCHAR(150);

--Rename a column
ALTER TABLE person_8
RENAME COLUMN last_name TO surname;

--Change data type length
ALTER TABLE person_8
MODIFY COLUMN surname VARCHAR(250);

--Delete a column
ALTER TABLE person_8
DROP COLUMN surname;