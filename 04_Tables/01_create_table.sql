--Create new table named "person"
CREATE TABLE person(
    id_person INT,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    created DATE
);

--Create new table named "person_2" with with the constraint "NOT NULL"
CREATE TABLE person_2(
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATE
);

--Create new table named "person_3" with with the constraint "NOT NULL" and "UNIQUE"
CREATE TABLE person_3(
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATETIME,
    UNIQUE(id_person)
);

--Create new table named "person_4" with with the constraint "NOT NULL", "UNIQUE" and "PRIMARY KEY"
CREATE TABLE person_4(
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATETIME,
    UNIQUE(id_person),
    PRIMARY KEY(id_person)
);

--Create new table named "person_5" with with the constraint "NOT NULL", "UNIQUE", "PRIMARY KEY" and "CHECK"
CREATE TABLE person_5(
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATETIME,
    UNIQUE(id_person),
    PRIMARY KEY(id_person),
    CHECK(age >= 18)
);

/*
    Create new table named "person_6" with with the constraint "NOT NULL", "UNIQUE", "PRIMARY KEY",
    "CHECK" and "DEFAULT"
*/
CREATE TABLE person_6(
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id_person),
    PRIMARY KEY(id_person),
    CHECK(age >= 18)
);

--Add default date
CREATE TABLE person_6b (
    id_person INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(100),
    created DATETIME DEFAULT '2024-07-23 16:00:00',
    PRIMARY KEY (id_person),
    UNIQUE (id_person)
);

/*
    Create new table named "person_7" with with the constraint "NOT NULL", "UNIQUE", "PRIMARY KEY",
    "CHECK", "DEFAULT" and "AUTO_INCREMENT"
*/
CREATE TABLE person_7(
    id_person INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100),
    created DATETIME DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id_person),
    PRIMARY KEY(id_person),
    CHECK(age >= 18)
);

--Test table
CREATE TABLE person_test(
    name VARCHAR(100) NOT NULL
);