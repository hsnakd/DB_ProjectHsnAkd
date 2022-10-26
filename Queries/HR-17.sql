SELECT *
FROM TESTERS;

SELECT *
FROM DEVELOPERS;

--UNION -> combines, removes duplicates, sorts
--(all column must be the same-if just a column(name) is same, it shows in the result )
SELECT *
FROM TESTERS
UNION
SELECT *
FROM DEVELOPERS;

--duplication is not allowed -
SELECT NAMES
FROM TESTERS
UNION
SELECT NAMES
FROM DEVELOPERS;

--UNION ALL-> combines, does not remove duplicates, does not sort
--first testers are listed then developers
SELECT *
FROM TESTERS
UNION ALL
SELECT *
FROM DEVELOPERS;

--MINUS -> show records from query1 that are not present in query2
SELECT NAMES
FROM DEVELOPERS
MINUS
SELECT NAMES
FROM TESTERS;

--INTERSECT -> show common records from 2 queries
SELECT NAMES
FROM TESTERS
INTERSECT
SELECT NAMES
FROM DEVELOPERS;

--how to find duplicate names in the employees table
SELECT TESTERS.NAMES
FROM TESTERS JOIN DEVELOPERS
ON TESTERS.NAMES = DEVELOPERS.NAMES

--how to find duplicate names in the employees table

SELECT FIRST_NAME, COUNT(*)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;
