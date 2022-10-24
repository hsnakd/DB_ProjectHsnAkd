-- find the highest 14th salary

SELECT MIN(SALARY)
FROM (SELECT *
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM = 15;

--find employee info who is making 14th highest salary (with duplicates)
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY)
                FROM (SELECT *
                      FROM EMPLOYEES
                      ORDER BY SALARY DESC)
                WHERE ROWNUM < 15);

--find employee info who is making 14th highest salary (without duplicates)
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY)
                FROM (SELECT DISTINCT SALARY
                      FROM EMPLOYEES
                      ORDER BY SALARY DESC)
                WHERE ROWNUM < 15);