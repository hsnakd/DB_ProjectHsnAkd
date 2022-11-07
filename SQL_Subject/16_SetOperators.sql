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



select * from LAPTOPS
union all
select * from PHONES;

select * from PHONES
union
select * from LAPTOPS;

--get me the colors only laptops have
select COLOR from PHONES
minus
select COLOR from LAPTOPS;

--get me common colors for phone and laptops
select COLOR from LAPTOPS
intersect
select COLOR from PHONES;


-----------------------------------------------

SELECT *
FROM DEVELOPERS
UNION
SELECT *
FROM TESTERS;
/*
        1,Mike,155000
        1,Steven,110000
        2,Adam,105000
        2,John,142000
        3,Lex,100000
        3,Steven,850000
        4,Maria,120000

 */

--UNION
-- remove the duplicated rows, ascending
SELECT NAMES
FROM DEVELOPERS
UNION
SELECT NAMES
FROM TESTERS;
/*
        Adam
        John
        Lex
        Maria
        Mike
        Steven
 */

-- UNION ALL
-- does not remove the duplicated rows, and does not sort
SELECT NAMES
FROM DEVELOPERS
UNION ALL
SELECT NAMES
FROM TESTERS;
/*
        Mike
        John
        Steven
        Maria
        Steven
        Adam
        Lex
 */

--MINUS
-- returns the !st query's rows that are not matching 2nd query's row
SELECT NAMES
FROM DEVELOPERS
MINUS
SELECT NAMES
FROM TESTERS;
/*
        John
        Maria
        Mike
*/

-- INTERSECT
-- returns the matching rows from two queries
SELECT NAMES
FROM DEVELOPERS
INTERSECT
SELECT NAMES
FROM TESTERS;
/*
        Steven
*/