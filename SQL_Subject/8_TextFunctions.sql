--how can we rename the column that we displayed
select first_name as "given_name", last_name as "surname"
from employees;

--text functions,string mani.
--java first_name+" "+last_name
-- in sql concat is ||

select first_name||' '||last_name as "full_name"
from employees;

--Task;
--add @gmail.com and name new column to full_email
select email
from employees;

select email||'@gmail.com' as "full_email"
from employees;

--making all lowercase
select lower(email||'@gmail.com') as "full_email"
from employees;

--upper case
select upper(email||'@gmail.com') as "full_email"
from employees;

--length(value)
select first_name,length(first_name) as "length_name"
from employees
order by "length_name" desc;

--substr(colName,begIndex,NumberOfChar)
--substr(ColumnName, begIndex, endIndex)
select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials"
from employees;

select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials",
       first_name||' '||last_name as "full_name",lower(email||'@gmail.com') as "full_email"
from employees;

--VIEW
CREATE VIEW Emaillist_jamal as select substr(first_name,0,1)||'.'||substr(last_name,0,1) as "initials",
                                      first_name||' '||last_name as "full_name",lower(email||'@gmail.com') as "full_email"
                               from employees;

select "full_name"
from Emaillist_jamal;

--to remove view
drop view Emaillist_jamal;

--length(Value)
SELECT JOB_TITLE, LENGTH(JOB_TITLE)
FROM JOBS;

--upper(Value) / lower(Value)
SELECT UPPER(CITY) , LOWER(STREET_ADDRESS)
FROM LOCATIONS;

--initcap(Value)
SELECT INITCAP(EMAIL)
FROM EMPLOYEES;

--concat(Value1, Value2)
SELECT EMPLOYEE_ID || SUBSTR(FIRST_NAME,0,2)  || SUBSTR(JOB_ID,0,2) || DEPARTMENT_ID AS PERSONAL_ID
FROM EMPLOYEES;

--concat
SELECT CONCAT(CONCAT(CONCAT(EMPLOYEE_ID, SUBSTR(FIRST_NAME,0,2)),SUBSTR(JOB_ID,0,2)),DEPARTMENT_ID) AS PERSONAL_ID
FROM EMPLOYEES;

--replace(ColumnName, OldValue, NewValue)
SELECT REPLACE(FIRST_NAME, 'Ellen', 'Elen')
from EMPLOYEES;


--trim(Value)
SELECT CONCAT( '      ' ,FIRST_NAME)
from EMPLOYEES;

SELECT TRIM(CONCAT( '      ' ,FIRST_NAME))
from EMPLOYEES;


