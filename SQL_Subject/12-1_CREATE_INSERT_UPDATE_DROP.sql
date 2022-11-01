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
 create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
 */
CREATE TABLE ADDRESS_HSNAKD (
    ADDRESS_ID INTEGER PRIMARY KEY,
    ADDRESS VARCHAR(50),
    PHONE INTEGER
    );

SELECT *
FROM  ADDRESS_HSNAKD;

/*
 insert syntax:
    INSERT INTO tableName (column1, column2,…)
    VALUES (value1, value2 … );
 */

INSERT INTO ADDRESS_HSNAKD (ADDRESS_ID, ADDRESS, PHONE)
VALUES (26, 'TURKIYE', 90);

INSERT INTO ADDRESS_HSNAKD (ADDRESS_ID, ADDRESS, PHONE)
VALUES (10, 'TURKIYE', 90);

SELECT *
FROM  ADDRESS_HSNAKD;

-- ************  --
CREATE TABLE CUSTOMER_HSNAKD (
    CUSTOMER_ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(30) NULL,
    ADDRESS_ID INTEGER REFERENCES ADDRESS_HSNAKD (ADDRESS_ID)
);

INSERT INTO CUSTOMER_HSNAKD (CUSTOMER_ID, FIRST_NAME, ADDRESS_ID)
VALUES (1, 'HSN', 10);

INSERT INTO CUSTOMER_HSNAKD (CUSTOMER_ID, FIRST_NAME, ADDRESS_ID)
VALUES (2, 'AKD', 26);


SELECT *
FROM  ADDRESS_HSNAKD;

SELECT *
FROM  CUSTOMER_HSNAKD;

/*
 update syntax:
    UPDATE table_name
    SET column1 = value1,
        column2 = value2 , …
    WHERE condition;
 */

UPDATE CUSTOMER_HSNAKD
SET CUSTOMER_ID = 3
WHERE ADDRESS_ID = 26;

SELECT *
FROM  CUSTOMER_HSNAKD;


/*
 update syntax:
    DELETE
    FROM table_name
    WHERE condition;
 */

DELETE
FROM CUSTOMER_HSNAKD
WHERE CUSTOMER_ID = 3 AND ADDRESS_ID = 10; -- AND ADDRESS_ID = 10 ==> OPTIONAL

SELECT *
FROM  CUSTOMER_HSNAKD;

/*
 After all the insertion is done, you have to commit them. If you don’t commit, it will not be entered in the database
    Syntax:
        commit; or commit work;

 We just need to do it one time at the end
 */
COMMIT;