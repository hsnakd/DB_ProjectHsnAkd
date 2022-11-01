-- get me all info who is working as IT _PROG or SA_REP

select * from employees
where job_id in('IT_PROG','SA_REP');

--how many employee are working as IT_PROG or SA_REP
select count(*) from employees
where job_id in('IT_PROG','SA_REP');

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
ORDER BY HIRE_DATE;

SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM EMPLOYEES
ORDER BY COMMISSION_PCT;

-- ORDER BY FIRST_NAME BUT if there will be same name it will desc the salary
SELECT FIRST_NAME, SALARY
FROM EMPLOYEES
ORDER BY FIRST_NAME, SALARY DESC ;

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
ORDER BY FIRST_NAME, LAST_NAME DESC ;


SELECT FIRST_NAME, JOB_ID, SALARY
FROM EMPLOYEES
ORDER BY JOB_ID, SALARY DESC ;


--how many employees making more than 8000
select count(*) from employees
where salary >8000;

-- how many unique first names we have ? 
select count(distinct first_name) from employees;

-- get me all employees information based on who is making more salary to low salary
select * from employees
order by salary asc;

--desc 9-0 Z-A
--asc 0-9 a-Z

--get me all emp info order by alphabetical based on firstname 
select * 
from employees
order by first_name;

--NOTE: default order type is asc if you dont specify after column name

-- get me all employees whose first name starts with C
select * 
from employees
where first_name like 'C%';

-- Select all records where the value of the first_name column does NOT start with the letter "a".
select *
from employees
where first_name not like 'A%';

--Select all records where the first letter of the first_name is an "a" or a "c" or an "s".??????
select *
from employees
where first_name like '[ACS]%';

--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".??????
select *
from employees
where first_name like '[!ACF]%';

--Select all records where the first letter of the City starts with anything from an "a" to an "f".????
select *
from employees
where first_name like '[A-F]%';

--get me 5 letter first names where the middle char is z;
select * 
from employees
where first_name like '__z__';

--get me first name where second char is u;
select *
from employees
where first_name like '_u%';

select * from employees;
--find me minimum salary
select min(salary) from employees;

--find me max salary
select max(salary) from employees;

--find me avg salary
select avg(salary) from employees;

--round

select round(avg(salary),2) from employees;

select sum(salary) from employees;

SELECT FIRST_NAME,JOB_ID
FROM EMPLOYEES
WHERE EMPLOYEES.JOB_ID LIKE '%CLERK%';

SELECT EMAIL
FROM EMPLOYEES
WHERE EMPLOYEES.EMAIL LIKE 'E_____';

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE LAST_NAME LIKE '_____';

SELECT FIRST_NAME, SALARY, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%2005%';

SELECT AVG(SALARY)
FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY))
FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY),2)
FROM EMPLOYEES;

SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

SELECT MIN(SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'SA_REP';

SELECT SUM(SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'ST_MAN';

SELECT AVG(SALARY)
FROM EMPLOYEES
WHERE JOB_ID = 'SA_REP';

