SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND LAST_NAME='Lee';

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David' OR FIRST_NAME='Steven';

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND SALARY > 5000;

SELECT * FROM EMPLOYEES
WHERE SALARY > 7000;

SELECT EMAIL FROM EMPLOYEES
WHERE SALARY < 4000;

SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID='SA_REP';

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY >5000 AND SALARY<=10000;

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000;

SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 10000;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 130 AND 170;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (135,176,154,129);

SELECT CITY FROM LOCATIONS
WHERE COUNTRY_ID IN('IT','US','UK');

