CREATE TABLE    CLASSMATES(

                              student_id Integer PRIMARY KEY,
                              first_name VARCHAR(50),
                              last_name VARCHAR(50)

);




CREATE TABLE COWORKERS(

                          employee_id Integer PRIMARY KEY,
                          first_name VARCHAR(50),
                          last_name VARCHAR(50),
                          personnel_id Integer REFERENCES CLASSMATES(student_id)
-- FOREIGN KEY (PERSONNEL_ID) CAN BE DUPLİCATED AND CAN BE NULL
-- DATA NEEDS TO BE MATCHED WITH THE REFERENCED PRIMARY KEY
);

INSERT INTO COWORKERS VALUES (1,'JOHN', 'ERIC', NULL);

SELECT *
FROM COWORKERS;

INSERT INTO CLASSMATES VALUES (1,'AARON', 'DANIEL');

SELECT *
FROM CLASSMATES;

INSERT INTO COWORKERS VALUES (2,'JIMMY', 'ROSE', 1);

SELECT *
FROM COWORKERS;


INSERT INTO COWORKERS VALUES (3,'AHMET', 'MEHMET', 2);
-- IT GIVES ERROR
-- foreign key data is not matching with the referenced primary key's data (2)

UPDATE CLASSMATES
SET STUDENT_ID = 4
WHERE STUDENT_ID = 1;
-- IT GIVES ERROR
-- BECAUSE OF PRIMARY KEY (CLASSMATES.student_id) IS REFERENCED TO
-- FOREIGN KEY (COWORKERS.personnel_id) IT CAN NOT BE CHANGED

ALTER TABLE COWORKERS
    DROP COLUMN PERSONNEL_ID;

UPDATE CLASSMATES
SET STUDENT_ID = 4
WHERE STUDENT_ID = 1;

SELECT *
FROM CLASSMATES;



-- commit work;