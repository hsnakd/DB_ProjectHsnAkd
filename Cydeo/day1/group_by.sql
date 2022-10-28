
--get me unique job_ids
select distinct job_id from employees;

-- get me average salary for IT_PROG
SELECT AVG(salary)
FROM employees
WHERE job_id = 'AC_ACCOUNT';

-- get me average salary for each job_id
select job_id,avg(salary)
from employees
group by job_id;

--get me job_ids where their just personal salary is more than 5k
select job_id,avg(salary),count(*),sum(salary)
from employees
where salary >5000
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


