--how to create table
/*
 create table syntax:
     create table TableName(
        colName1 DataType Constrains,
        colName2 DataType Constrains(opitional)
        colName3 DataType Constrains,
     ...
     );
 */
 CREATE TABLE ST_HSNAKD(
     EMP_ID INTEGER PRIMARY KEY ,
     FIRST_NAME VARCHAR(30) NOT NULL,
     LAST_NAME VARCHAR(30),
     JOB_TITLE VARCHAR(20)
 );

SELECT *
FROM ST_HSNAKD;

--how to insert value in the table
/*
 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2,...)
 */

INSERT INTO ST_HSNAKD (EMP_ID,FIRST_NAME,LAST_NAME, JOB_TITLE)
VALUES (1,'HSN', 'AKD', 'SDET');

INSERT INTO ST_HSNAKD
VALUES (2,'H', 'A', 'QA');

--how to update data
/*
UPDATE table_name
    SET column1 = value1,
    column2 = value2 , …
WHERE condition;
 */

UPDATE ST_HSNAKD
SET JOB_TITLE = 'TESTER'
WHERE EMP_ID = 2;

--how to delete from the table
/*
 DELETE FROM table_name
WHERE condition;
 */

DELETE FROM ST_HSNAKD
WHERE EMP_ID =2;