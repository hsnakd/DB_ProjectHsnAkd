
--get me all employees firstname, lastname and their managers first and lastname

select employee_id,first_name,last_name,manager_id from employees;

select e1.employee_id,e1.first_name,e1.last_name,e1.manager_id,e2.employee_id,e2.first_name,e2.last_name
from employees e1 left join employees e2
on e1.manager_id = e2.employee_id
order by e1.employee_id;

-- get me first name , start date, end date in same table of all employees
SELECT E1.FIRST_NAME, E1.LAST_NAME, E1.MANAGER_ID, E2.LAST_NAME
FROM EMPLOYEES E1 JOIN EMPLOYEES E2
ON E1.MANAGER_ID = E2.MANAGER_ID;

-- which job title max salary equals to which job title min salary
SELECT J1.JOB_TITLE, J1.MAX_SALARY, J2.JOB_TITLE, J2.MIN_SALARY
FROM JOBS J1 JOIN JOBS J2
ON J1.MAX_SALARY = J2.MIN_SALARY;

