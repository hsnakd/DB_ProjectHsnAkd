-- get the highest salary
SELECT MAX(SALARY) FROM EMPLOYEES;

-- how to find employees information of who is making 24000 salary in the company
SELECT *
FROM EMPLOYEES
WHERE SALARY = 24000;

-- how to find employees information of who is making highest salary in the company
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES);

-- how to find employees information of who is making second highest salary in the company
SELECT MAX(SALARY)
FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES);

--employee information of who is making second highest salary
SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY)
                FROM EMPLOYEES
                WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEES));

--list the employees who is making HIGHEST TO LOWEST salary
SELECT *
FROM EMPLOYEES
ORDER BY SALARY DESC;

--list the employees who is making TOP 10 salary
SELECT *
FROM (SELECT *
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 11;


