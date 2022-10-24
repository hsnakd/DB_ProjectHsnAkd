-- how can we rename the column that we displayed
-- "GIVEN_NAME" ==> GIVEN_NAME
-- "Given_Name" ==> Given_Name
--  Given_Name  ==> GIVEN_NAME

SELECT FIRST_NAME AS Given_Name, LAST_NAME AS SURNAME
FROM EMPLOYEES;

-- text functions, string mani
-- java first_name  + " " + last_name
-- in sql concat is ==> ||
SELECT FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME"
FROM EMPLOYEES;

-- add @gmail.com and name new column to full_email
SELECT FIRST_NAME || '' || LAST_NAME || '' || '@gmail.com' AS FULL_EMAIL
FROM EMPLOYEES;

SELECT LOWER(FIRST_NAME || '' || LAST_NAME || '' || '@gmail.com') AS FULL_EMAIL
FROM EMPLOYEES;

SELECT UPPER(FIRST_NAME || '' || LAST_NAME || '' || '@gmail.com') AS FULL_EMAIL
FROM EMPLOYEES;

SELECT FIRST_NAME, LENGTH(FIRST_NAME) AS LENGTH_NAME
FROM EMPLOYEES
ORDER BY "LENGTH_NAME" DESC;

--substr(colName,begIndex,NumberOfChar)
SELECT SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS" -- ==> E.A.
FROM EMPLOYEES;

SELECT SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS" -- ==> E.A.
FROM EMPLOYEES;

--
SELECT  SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS", -- ==> E.A.
        FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME",
        LOWER(FIRST_NAME || '' || LAST_NAME || '' || '@gmail.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

--VIEW
CREATE VIEW EMAIL_LIST_HSNAKD AS SELECT SUBSTR(FIRST_NAME,0,1) || '.' || SUBSTR(LAST_NAME,0,1) AS "INITIALS",
                                        FIRST_NAME || ' ' || LAST_NAME AS "FULL_NAME",
                                        LOWER(FIRST_NAME || '' || LAST_NAME || '' || '@gmail.com') AS "FULL_EMAIL"
FROM EMPLOYEES;

SELECT *
FROM EMAIL_LIST_HSNAKD;

--to remove view
DROP VIEW EMAIL_LIST_HSNAKD;

