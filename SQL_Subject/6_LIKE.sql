
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

