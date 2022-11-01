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

