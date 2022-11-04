-- SQL_Practice Tasks Part 4
SELECT *
FROM EMPLOYEES;

-- 1. find the 3rd maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 4;

-- 2. find the 5th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 6;

-- 3. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 8;

-- 4. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MIN(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY DESC)
WHERE ROWNUM < 11;

-- 5. find the 3rd minimum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY ASC)
WHERE ROWNUM < 4;

-- 6. find the 5th minimum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY ASC)
WHERE ROWNUM < 6;

-- 7. find the 7th maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY ASC)
WHERE ROWNUM < 8;

-- 8. find the 10th maximum salary from the employees table (do not include duplicates)
SELECT MAX(SALARY)
FROM (SELECT DISTINCT SALARY
      FROM EMPLOYEES
      ORDER BY SALARY ASC)
WHERE ROWNUM < 11;
