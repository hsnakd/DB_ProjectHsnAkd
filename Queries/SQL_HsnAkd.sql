SQL

-- reads all column from employees table
SELECT * FROM EMPLOYEES;

--get me first_name,last_name and salary
select first_name,last_name,salary from employees;

-- remove duplicates
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;

--
SELECT * FROM EMPLOYEES, DEPARTMENTS;

--
SELECT EMPLOYEES.EMPLOYEE_ID, DEPARTMENTS.DEPARTMENT_ID FROM EMPLOYEES, DEPARTMENTS;

-- how many unique first names we have ? 
select count(distinct first_name) from employees;

-- reads FIRST_NAME, LAST_NAME, SALARY from locations table
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES;

-- I want to see firstname lastname phone number of david(s)
SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND SALARY > 5000;

--get me first_name,last_name salary who is making more than 5000 and less than 10000
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000;

--get me first_name,last_name salary who is making less than 5000 and more than 10000
SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES
WHERE SALARY NOT BETWEEN 5000 AND 10000;

--get me all info who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID='SA_REP';

--get me city of where country_id IT,US,UK
SELECT CITY FROM LOCATIONS
WHERE COUNTRY_ID IN('IT','US','UK');

SELECT COUNT(*) FROM EMPLOYEES
WHERE SALARY > 8000;

SELECT COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
select * from employees
order by salary desc;

--get me all emp info order by alphabetical based on firstname 
select * from employees
order by first_name asc;  

--NOTE: default order type is asc if you dont specify after column name
select * from employees
order by first_name; 

-- starts with ==> LIKE 'C%'  / ends with ==> LIKE '%e'   /  contains ==> LIKE '%e%'
-- get me all employees whose first name starts with C
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';

--get me 5 letter first names where the middle char is z;
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

-- get me alll employees whose first name contains C 
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%e%';

--find me minimum salary
SELECT MIN(SALARY) FROM EMPLOYEES;

--find me max salary
SELECT MAX(SALARY) FROM EMPLOYEES;

-- **
SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

--find me avg salary
SELECT AVG(SALARY) FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES;

SELECT SUM(SALARY) FROM EMPLOYEES;

-- get me average salary for IT_PROG
SELECT AVG(salary)
FROM employees
WHERE job_id = 'AC_ACCOUNT';

-- get me average salary for each job_id
select job_id,avg(salary)
from employees
group by job_id;

--get me job_ids where their avg salary is more than 5k
select job_id,avg(salary),count(*),sum(salary)
from employees
group by job_id
having avg(salary) >5000;

--how many employee are working as IT_PROG or SA_REP
select count(*) from employees
where job_id in('IT_PROG','SA_REP');


*********************************************
*                                           *
*********************************************

-- get the highest salary
SELECT MAX(SALARY) FROM EMPLOYEES;

-- how to find employees information of who is making 24000 salary in the company
SELECT *
FROM EMPLOYEES
WHERE SALARY = 24000

-- how to find employees information of who is making highest salary in the company

SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);
