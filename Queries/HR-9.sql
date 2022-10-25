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

ALTER TABLE AGILE_HSNAKD RENAME TO ST_HSNAKD;

COMMIT ;

-- truncate, if we want to delete all data from the table,
-- but still keep the table structure we use truncate

TRUNCATE TABLE ST_HSNAKD;

-- if we want to delete the table and data together
DROP TABLE ST_HSNAKD;