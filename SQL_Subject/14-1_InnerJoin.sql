/*
 To get data from both tables, we use the INNER JOIN clause in the SELECT
    statement as follows:
               #TableName.Column_name
        SELECT   customer.customer_id
        FROM address INNER JOIN customer
        ON address.address_id = customer.address_id
            #Primary Key            #Foreign Key

 */

SELECT *
FROM CUSTOMER;

SELECT *
FROM ADDRESS;

--INNER JOIN
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER JOIN ADDRESS      --INNER is optional ==> JOIN == INNER JOIN
ON CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--making shortcuts  ==> Customer c
SELECT CUSTOMER_ID,FIRST_NAME,LAST_NAME,ADDRESS,PHONE
FROM CUSTOMER c INNER JOIN ADDRESS a
ON c.ADDRESS_ID = a.ADDRESS_ID;




select first_name,last_name,c.address_id,address,phone
from customer c left join address a
on c.address_id = a.address_id;

select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c right join address a
on c.address_id = a.address_id;


select first_name,last_name,c.address_id,a.address_id,address,phone
from customer c full join address a
on c.address_id = a.address_id;

--get me first_name,last_name and department name for all employees

select * from employees;

select * from departments;

select first_name,last_name,department_name
from employees e left join departments d
                           on e.department_id = d.department_id
where e.department_id is null;

--get me first_name,last_name and department_name,city for all employees
select first_name,last_name,department_name,city
from employees e join departments d
on e.department_id = d.department_id
join locations l
on d.location_id = l.location_id;

--get me firstname,lastname and department name, city,country_name for all employees;
select first_name , last_name , department_name, city,country_name
from employees e join departments d
on e.department_id = d.department_id
join locations L
on d.location_id = l.location_id
join countries C
on c.country_id = l.country_id;



SELECT FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT J.JOB_ID, E.MANAGER_ID
FROM JOBS J JOIN EMPLOYEES E
ON J.JOB_ID = E.JOB_ID;