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


-- 6. divide employees into groups by using their job id

--  6.1 display the maximum salaries in each groups
--  6.2 display the miniMum salaries in each groups
--  6.3 display the average salary of each group
--  6.4 how many employees are there in each group that have minimum salary of 5000 ?
--  6.5 display the total budgets of each groups



--  7. display employees' full email addresses and full names

-- (assume that the domain of the email is @gmail)



-- 8. display full addresses from locations table in a single column

-- (full address: Street_Address,  CityName  ZipCode,  Country_id)