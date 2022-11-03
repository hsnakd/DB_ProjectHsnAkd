-- SQL Practice Tasks Part 2
-- 1. list the first letter of first_name and last_name as initials of all the employees
SELECT SUBSTR(FIRST_NAME,0,1) || SUBSTR(LAST_NAME,0,1) AS INITIALS
FROM EMPLOYEES;

-- 2. list the full names of all employees ( FullName: LastName FirstName)
SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME
FROM EMPLOYEES;

-- 3. who has the longest name in the employees table?
SELECT *
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) = (SELECT MAX (LENGTH(FIRST_NAME))
                            FROM EMPLOYEES);
select *
from employees
where length(first_name||' '||last_name) =
                              ( select max( length(first_name||' '||last_name)) from employees );
-- 4. Show all employees who work in any one of these department id  90, 60, 100, 130, 120
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (90, 60, 100, 130, 120);

-- 5. Show all employees who does not work in any one of these department id 90, 60,  100, 130, 120
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN (90, 60, 100, 130, 120);

-- 6. divide employees into groups by using their job id
SELECT JOB_ID
FROM EMPLOYEES
GROUP BY JOB_ID;

--  6.1 display the maximum salaries in each groups
SELECT JOB_ID, MAX(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

--  6.2 display the minimum salaries in each groups
SELECT JOB_ID, MIN(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

--  6.3 display the average salary of each group
SELECT JOB_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

-- 6.4 how many employees are there in each group that have minimum salary of 5000?
SELECT JOB_ID, COUNT(*)
FROM EMPLOYEES
WHERE SALARY >= 5000
GROUP BY JOB_ID;

-- 6.5 display the total budgets of each groups
SELECT JOB_ID, SUM(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

--  7. display employees' full email addresses and full names
-- (assume that the domain of the email is @gmail)
SELECT FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME, LOWER(EMAIL || '@gmail.com') AS EMAIL_ADDRESS
FROM EMPLOYEES;

-- 8. display full addresses from locations table in a single column
-- (full address: STREET_ADDRESS,  CITY  POSTAL_CODE,  COUNTRY_ID)
SELECT STREET_ADDRESS || ' ' || CITY || ' ' || POSTAL_CODE || ' ' || COUNTRY_ID AS FULL_ADDRESS
FROM LOCATIONS;