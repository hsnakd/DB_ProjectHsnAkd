select * from testers
union
select * from developers;

select names from testers
union
select names from developers;


select names from developers
intersect
select names from testers;

--how to find duplicate names in employees table

select  first_name,count(*)
from employees
group by first_name
having count(*) >1;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE ROWNUM < 6;

