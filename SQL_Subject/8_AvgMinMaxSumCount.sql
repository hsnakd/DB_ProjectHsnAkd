
-- get me average salary for IT_PROG
SELECT AVG(salary)
FROM employees
WHERE job_id = 'AC_ACCOUNT';

-- get me average salary for each job_id
select job_id, avg(salary)
from employees
group by job_id;

--get me job_ids where their just personal salary is more than 5k
select job_id,avg(salary), count(*), sum(salary)
from employees
group by job_id;

--get me job_ids where their avg salary is more than 5k
select job_id,avg(salary),count(*),sum(salary)
from employees
group by job_id
having avg(salary) >5000;

--List the number of EMPLOYEES in each salary, ordered by the salary job_id first.
SELECT COUNT(JOB_ID), SALARY
FROM EMPLOYEES
GROUP BY SALARY
ORDER BY COUNT(JOB_ID) DESC;

SELECT DISTINCT SALARY
FROM EMPLOYEES
ORDER BY SALARY ASC;

SELECT JOB_ID, MIN_SALARY
FROM JOBS
WHERE MIN_SALARY BETWEEN 4000 AND 9000;

SELECT MAX(SALARY), DEPARTMENT_ID
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;

SELECT JOB_ID, COUNT(JOB_ID)
FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, MIN(SALARY), MAX(SALARY), SUM(SALARY), AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, COUNT(JOB_ID)
FROM EMPLOYEES
GROUP BY JOB_ID;

SELECT JOB_ID, SUM(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING SUM(SALARY) > 20000;

SELECT DEPARTMENT_ID, COUNT(DEPARTMENT_ID)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING COUNT(*) > 10;

SELECT JOB_ID, AVG(COMMISSION_PCT)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(COMMISSION_PCT)>0.2;

SELECT MANAGER_ID, MAX(SALARY)
FROM EMPLOYEES
GROUP BY MANAGER_ID
HAVING MAX(SALARY) > 10000;

SELECT MANAGER_ID, MAX(SALARY)
FROM EMPLOYEES
GROUP BY MANAGER_ID
HAVING MAX(SALARY) > 10000
ORDER BY MAX(SALARY) DESC ;

select round(avg(salary),2)
from employees;

select round(avg(salary))
from employees;

-- get me all employees information based on who is making more salary to low salary
select * from employees
order by salary asc;

--desc 9-0 Z-A
--asc 0-9 a-Z

--get me all emp info order by alphabetical based on firstname
select *
from employees
order by first_name;
