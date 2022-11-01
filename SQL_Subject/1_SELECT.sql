-- reads all column from employees table
SELECT *
FROM EMPLOYEES;

-- reads all column from departments table
select *
from departments;

--get only firstname from employees table
select first_name
from employees;

--display city names
select city
from locations;

--get me first_name,last_name and salary
select first_name,last_name,salary
from employees;

--get me street address and postal code
SELECT street_address, postal_code
FROM locations;
