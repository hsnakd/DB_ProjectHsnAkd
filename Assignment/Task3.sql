-- SQL_Practice Tasks Part 3
-- 1. Create a table called Address3
    -- Columns :
        -- 1. address_id: Must be Unique and cannot be null
        -- 2. address: Cannot be null
        -- 3. Phone: Cannot be null

CREATE TABLE ADDRESS3(
    ADDRESS_ID INTEGER PRIMARY KEY,
    ADDRESS VARCHAR(50) NOT NULL,
    PHONE INTEGER NOT NULL
    );

    -- Insert the following data:
        --  				Address
        --  address_id		address 	 			phone
        -- 5			1913 Hanoi Way			28303384
        -- 7 			692 Joliet Street		44847719
        -- 8 			1566 Inegl Manor		70581400
        -- 10 			1795 Santiago			86045262
        -- 11 			900 Santiago			165712220

INSERT INTO ADDRESS3 (ADDRESS_ID, ADDRESS, PHONE)
VALUES (5, '1913 Hanoi Way',28303384);

INSERT INTO ADDRESS3 (ADDRESS_ID, ADDRESS, PHONE)
VALUES (7, '692 Joliet Street',44847719);

INSERT INTO ADDRESS3 (ADDRESS_ID, ADDRESS, PHONE)
VALUES (8, '1566 Inegl Manor',70581400);

INSERT INTO ADDRESS3 (ADDRESS_ID, ADDRESS, PHONE)
VALUES (10, '1795 Santiago',86045262);

INSERT INTO ADDRESS3 (ADDRESS_ID, ADDRESS,PHONE)
VALUES (11, '900 Santiago',165712220);

SELECT *
FROM ADDRESS3;
-- 2. Create a table called Customers
    -- Columns:
        -- 1. Customer_Id: Must be Unique and cannot be null
        -- 2. FirstName: cannot be null
        -- 3. LastName: cannot be null
        -- 4. Address_Id: is Address table' primary key

CREATE TABLE CUSTOMERS3(
    CUSTOMERS_ID INTEGER PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    ADDRESS_ID INTEGER REFERENCES ADDRESS3 (ADDRESS_ID)
    );
    -- Insert the following data:
        --  				Customer
        -- c_id		first_name		last_name 	 	address_id
        -- 1			Mary			Smith			5
        -- 2 			Patricia		Johnson			NULL
        -- 3 			Linda			Williams		7
        -- 4			Barbara			Jones			8
        -- 5 			Elizabeth		Brown 			NULL

INSERT INTO CUSTOMERS3 (CUSTOMERS_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID)
VALUES (1, 'Mary', 'Smith',5 );

INSERT INTO CUSTOMERS3 (CUSTOMERS_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID)
VALUES (2, 'Patricia', 'Johnson', null);

INSERT INTO CUSTOMERS3 (CUSTOMERS_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID)
VALUES (3, 'Linda', 'Williams', 7);

INSERT INTO CUSTOMERS3 (CUSTOMERS_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID)
VALUES (4, 'Barbara', 'Jones', 8);

INSERT INTO CUSTOMERS3 (CUSTOMERS_ID, FIRST_NAME, LAST_NAME, ADDRESS_ID)
VALUES (5, 'Elizabeth', 'Brown', null );

SELECT *
FROM CUSTOMERS3;

COMMIT WORK;
