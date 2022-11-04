-- SQL_Practice Tasks Part 3-2
-- 1. Show all job_id and average salary who work as any of these jobs IT_PROG, SA_REP, FI_ACCOUNT, AD_VP
SELECT JOB_ID, AVG(SALARY) AS AVG_SALARY
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING JOB_ID IN ('IT_PROG', 'SA_REP', 'FI_ACCOUNT', 'AD_VP');

--  2. Show all records whose last name contains 2 lowercase 'a's
SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE ('%a%') AND LAST_NAME LIKE ('%s%');

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE ('%a%') AND LAST_NAME LIKE ('%a%a%');

--  4. Display total salary for each department except department_id 50, and where total salary >30000
SELECT DEPARTMENT_ID, SUM(SALARY)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING SUM(SALARY) > 30000 AND DEPARTMENT_ID != 50;

--  5. Write a SQL query that returns first and last name any employees
--  who started job between 1-JAN-2000 and 3-SEP-2007 from the hr database
SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '1-JAN-2000' and '3-SEP-2007' ;

--  6. Display country_id, country name, region id, region name from hr database

SELECT COUNTRY_ID, COUNTRY_NAME, C.REGION_ID, REGION_NAME
FROM COUNTRIES C INNER JOIN REGIONS R
ON C.REGION_ID = R.REGION_ID;

--  7. Display All cities, country names from hr database
select *
from LOCATIONS;

SELECT L.CITY, C.COUNTRY_NAME
FROM COUNTRIES C INNER JOIN LOCATIONS L
ON C.COUNTRY_ID = L.COUNTRY_ID;

--  8. display the first name, last name, department number, and department name,
--  for all employees for departments 80 or 40.
SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN  DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID IN (80,40);

--  9. Display employees' first name, Lastname department id and
--  all departments including those where do not have any employee.
SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM DEPARTMENTS D LEFT OUTER JOIN EMPLOYEES E
ON D.DEPARTMENT_ID = E.DEPARTMENT_ID;

select e.first_name, e.last_name, e.department_id, d.department_name
from departments d left outer join employees e
    on d.department_id=e.department_id;

-- 10. Display the first name, last name, department number, and department name,
-- for all employees who have or have not any department
SELECT E.FIRST_NAME, E.LAST_NAME, E.DEPARTMENT_ID, D.DEPARTMENT_NAME
FROM EMPLOYEES E LEFT JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

select e.first_name, e.last_name, e.department_id, d.department_name
from departments d right outer join employees e ON d.department_id=e.department_id;

-- 11. Display all employee and their manager's names
SELECT E1.FIRST_NAME, E1.LAST_NAME, E1.MANAGER_ID, E2.FIRST_NAME, E2.LAST_NAME
FROM EMPLOYEES E1 JOIN EMPLOYEES E2
ON E1.MANAGER_ID = E2.EMPLOYEE_ID;

select e1.first_name||' '|| e1.last_name as "Employee Name",
       e2.first_name||' '||e2.last_name as "Manager Name"
from employees e1 join employees e2
on e1.manager_id=e2.employee_id;