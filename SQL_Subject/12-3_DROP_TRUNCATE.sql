/*
 DDL: Data Definition Language
    It is used to define data structures
        CREATE
        DROP
        TRUNCATE
        ALTER

 DML: Data Manipulation Language
    It is used to define data itself
        SELECT
        INSERT
        UPDATE
        DELETE

NOT NULL    — the value of the column cannot be NULL.
UNIQUE      — the value of the column must be unique across the whole table.
PRIMARY KEY — Combination of both NOT NULL and UNIQUE constraints.
REFERENCES  — OtherTable (PKColumn) — used to give foreign key to the column.

We give the foreign key to the column by making Other table’s primary key column as the reference column
IN ORDER TO HAVE FOREIGN KEY, WE MUST HAVE THE PRIMARY KEY IN OTHER TABLE
 */


/*
    To change existing table structure, you use ALTER TABLE statement.
    The syntax of the ALTER TABLE is as follows:

    ALTER TABLE table_name action;
 */

SELECT *
FROM CUSTOMER_HSNAKD;
/*
    The popular actions that we can do with alter keyword:
    ADD COLUMN      : adds column to the table
    DROP COLUMN     : drops the column from the table
    RENAME COLUMN   : renames the column name
    RENAME TO       : renames the table name
*/

--ADD
ALTER TABLE CUSTOMER_HSNAKD
ADD LAST_NAME VARCHAR(20);

SELECT *
FROM CUSTOMER_HSNAKD;

--RENAME
ALTER TABLE CUSTOMER_HSNAKD
RENAME COLUMN LAST_NAME TO CITY;

SELECT *
FROM CUSTOMER_HSNAKD;

--UPDATE
UPDATE CUSTOMER_HSNAKD
SET CITY = 'MIAMI'
WHERE FIRST_NAME = 'AKD';

SELECT *
FROM CUSTOMER_HSNAKD;

--DROP COLUMN
ALTER TABLE CUSTOMER_HSNAKD
DROP COLUMN CITY;

SELECT *
FROM CUSTOMER_HSNAKD;

ALTER TABLE CUSTOMER_HSNAKD
RENAME TO CUSTOMER_HSN_AKD;

SELECT *
FROM CUSTOMER_HSN_AKD;

ALTER TABLE CUSTOMER_HSN_AKD
RENAME TO CUSTOMER_HSNAKD;

SELECT *
FROM CUSTOMER_HSNAKD;

COMMIT WORK ;
/*
    To remove existing table from the database.

        DROP TABLE table_name;

 */

DROP TABLE CUSTOMER_HSNAKD;

SELECT *
FROM CUSTOMER_HSNAKD;

/**
  Truncating will remove all data from the table but not delete the table
        TRUNCATE table_name;
 */

SELECT  *
FROM ADDRESS_HSNAKD;

TRUNCATE TABLE ADDRESS_HSNAKD;

SELECT  *
FROM ADDRESS_HSNAKD;