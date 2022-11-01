/**
  View:
    creat view:
        creat view ViewNAme  as Statement

    replace view:
        create or replace view ViewName as Statement;

    dropping view:
        drop view ViewName
 */

SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM EMPLOYEES;

CREATE VIEW EMPLOYEE_INFO AS SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
                             FROM EMPLOYEES;

SELECT *
FROM EMPLOYEE_INFO;

SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME, LOWER(EMAIL || '@gmail.com') AS EMAIL
FROM EMPLOYEES;

CREATE OR REPLACE VIEW EMPLOYEE_INFO AS SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME, LOWER(EMAIL || '@gmail.com') AS EMAIL
                                       FROM EMPLOYEES;

SELECT *
FROM EMPLOYEE_INFO;

DROP VIEW EMPLOYEE_INFO;

SELECT *
FROM EMPLOYEE_INFO;
