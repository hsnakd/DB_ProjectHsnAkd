SELECT *
FROM CUSTOMER;

SELECT *
FROM ADDRESS;

--INNER JOIN
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER JOIN ADDRESS      --INNER is optional ==> JOIN == INNER JOIN
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--making shortcuts  ==> Customer c
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER c INNER JOIN ADDRESS a
ON c.ADDRESS_ID = a.ADDRESS_ID;

--LEFT OUTER
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER LEFT OUTER JOIN ADDRESS      --OUTER is optional ==> LEFT == LEFT OUTER
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--RIGHT OUTER
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER RIGHT JOIN ADDRESS      --OUTER is optional ==> RIGHT == RIGHT OUTER
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--FULL OUTER
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER FULL JOIN ADDRESS      --OUTER is optional ==> FULL == FULL OUTER
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
FROM EMPLOYEES LEFT JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;