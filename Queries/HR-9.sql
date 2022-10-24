SELECT *
FROM ST_HSNAKD;

--adding new column
ALTER TABLE ST_HSNAKD ADD SALARY INTEGER;

--update existing employees salary
UPDATE ST_HSNAKD
SET SALARY = 500000
WHERE EMP_ID = 1;

--rename the column
ALTER TABLE ST_HSNAKD RENAME COLUMN SALARY TO ANNUAL_SALARY;

--delete, drop column
ALTER TABLE ST_HSNAKD DROP COLUMN ANNUAL_SALARY;

-- how to change table name
ALTER TABLE ST_HSNAKD RENAME TO AGILE_HSNAKD;

SELECT *
FROM AGILE_HSNAKD;

COMMIT ;