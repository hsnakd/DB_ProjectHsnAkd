
CREATE TABLE testTABLE (
    IDY INTEGER PRIMARY KEY,
    NAME VARCHAR(25),
    FAMILY_NAME VARCHAR(25),
    AGE INTEGER
    );

SELECT *
FROM  testTABLE;


INSERT INTO testTABLE
VALUES (1, 'Mike', 'Stone', 52);

INSERT INTO testTABLE
VALUES (2, 'Rachel', 'Stone', 48);

UPDATE testTABLE
SET AGE = 53
WHERE ID = 1;

SELECT *
FROM  testTABLE;
---------------------------------------------------------------------------

CREATE TABLE LAPTOPS (
    ID INTEGER PRIMARY KEY,
    BRAND VARCHAR(25),
    COLOR VARCHAR(25),
    PRICE INTEGER
);

SELECT *
FROM LAPTOPS;

INSERT INTO LAPTOPS
VALUES (1, 'HP', 'BLACK', 1500);

INSERT INTO LAPTOPS
VALUES (2, 'MSI', 'GREY', 1300);

INSERT INTO LAPTOPS
VALUES (3, 'DELL', 'BLACK', 1600);

INSERT INTO LAPTOPS
VALUES (4, 'HP', 'WHITE', 1300);

INSERT INTO LAPTOPS
VALUES (5, 'MACBOOK', 'WHITE', 1800);


--------------

create table phones(
                       id_number integer primary key ,
                       brand varchar(25),
                       color varchar(25),
                       price integer
);

select * from phones;

-- 16. insert phones table belwo values
-- -- 1. (1, 'samsung' , 'black', 700)
-- -- 2. (2, 'dell', 'grey', 1000)
-- -- 3. (3, 'msi', 'black', 800)
-- -- 4. (4, 'iphone', 'white', 1100)

insert into phones values (1, 'samsung', 'black', 700);
insert into phones values (2, 'dell', 'grey', 1000);
insert into phones values (3, 'msi', 'black', 800);
insert into phones values (4, 'iphone', 'white', 1100);

UPDATE LAPTOPS
SET PRICE = 1500
WHERE ID = 3;

DELETE
FROM LAPTOPS
WHERE ID = 5;

DELETE
FROM LAPTOPS
WHERE BRAND = 'MACBOOK' AND COLOR = 'WHITE';

UPDATE LAPTOPS
SET COLOR = ''
WHERE BRAND = 'DELL';


UPDATE LAPTOPS
SET COLOR = NULL
WHERE BRAND = 'DELL';

ALTER TABLE LAPTOPS
RENAME TO LAPTOP;

ALTER TABLE LAPTOP
    RENAME TO LAPTOPS;

SELECT *
FROM LAPTOPS;