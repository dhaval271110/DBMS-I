USE CSE_3A_156;

--Perform SQL queries for Alter, Rename, Delete, Truncate, and Drop 

-- Alter, Rename Operation 

--Part – A: 

--From the above given tables perform the following queries (ALTER, RENAME Operation): 

--1. Add two more columns City VARCHAR (20) and Pincode INT. 
	SELECT * FROM DEPOSITE;

	ALTER TABLE DEPOSITE 
	ADD CITY VARCHAR(20) , PINCODE INT;

--2. Add column state VARCHAR(20). 
	ALTER TABLE DEPOSITE 
	ADD STATE VARCHAR(20);

--3. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35). 
	ALTER TABLE DEPOSITE 
	ALTER COLUMN CNAME VARCHAR (35)

--4. Change the data type DECIMAL to INT in amount Column. 
	 ALTER TABLE DEPOSITE 
	ALTER COLUMN AMOUNT INT

--5. Delete Column City from the DEPOSIT table.
	ALTER TABLE DEPOSITE 
	DROP COLUMN CITY

--6. Rename Column ActNo to ANO. 
	EXEC SP_RENAME 'DEPOSITE.ACTNO' , 'ANO';

--7. Change name of table DEPOSIT to DEPOSIT_DETAIL. 
	EXEC SP_RENAME 'DEPOSITE' , 'DEPOSITE_DETAIL';

--Part – B: 

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table. 
	EXEC SP_RENAME 'DEPOSITE_DETAIL.ADATE' , 'AOPENDATE';

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table. 
	ALTER TABLE DEPOSIT_DETAIL 
	DROP COLUMN AOPENDATE

--3. Rename Column CNAME to CustomerName. 
	EXEC SP_RENAME 'DEPOSITE_DETAIL.CNAME' , 'CustomerName';

--4. Add Column country.
	ALTER TABLE DEPOSITE
	ADD country VARCHAR(20);

--Part – C: 

--Create following table using query according to the definition. 

	CREATE TABLE STUDENT_DETAIL(
		ENROLLMENT_NO VARCHAR(20),
		NAME VARCHAR(25),
		CPI DECIMAL(5,2),
		BIRTHDATE DATETIME
	);

--From the above given tables perform the following queries (ALTER, RENAME Operation): 

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
	ALTER TABLE STUDENT_DETAIL
	ADD CITY VARCHAR(20) NOT NULL , BACKLOG INT;

--2. Add column department VARCHAR (20) Not Null. 
	ALTER TABLE STUDENT_DETAIL
	ADD department VARCHAR (20) NOT NULL ;

--3. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35). 
	ALTER TABLE STUDENT_DETAIL
	ALTER COLUMN NAME VARCHAR(35);

--4. Change the data type DECIMAL to INT in CPI Column. 
	ALTER TABLE STUDENT_DETAIL
	ALTER COLUMN CPI INT;

--5. Delete Column City from the student_detail table. 
	ALTER TABLE STUDENT_DETAIL
	DROP COLUMN CITY; 

--6. Rename Column Enrollment_No to ENO. 
	EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO';

--7. Change name of table student_detail to STUDENT_MASTER.
	EXEC SP_RENAME 'STUDENT_DETAIL' ,  'STUDENT_MASTER';


--DELETE, Truncate, Drop Operation 

--Part – A: 

--Use Deposit_Detail table (Altered table of DEPOSIT)

--1. Delete all the records of DEPOSIT_DETAIL table having amount less than and equals to 4000.  
	SELECT *  FROM DEPOSITE_DETAIL;

	DELETE FROM DEPOSITE_DETAIL
	WHERE AMOUNT<=4000;

--2. Delete all the accounts CHANDI BRANCH. 
	SELECT * FROM DEPOSITE_DETAIL;
	DELETE FROM DEPOSITE_DETAIL
	WHERE BNAME='CHANDI';

--3. Delete all the accounts having account number (ANO) is greater than 102 and less than 105. 
	DELETE FROM DEPOSITE_DETAIL 
	WHERE ACTNO>102 AND ACTNO<105;

--4. Delete all the accounts whose branch is ‘AJNI’ or ‘POWAI’ 
DELETE FROM DEPOSITE_DETAIL WHERE BNAME IN ('AJNI', 'POWAI');

--5. Delete all the accounts whose account number is NULL. 
DELETE FROM DEPOSITE_DETAIL WHERE ANO IS NULL;

--6. Delete all the remaining records using Delete command. 
DELETE FROM DEPOSITE_DETAIL;

--7. Delete all the records of Deposit_Detail table. (Use Truncate) 
TRUNCATE TABLE DEPOSITE_DETAIL;

--8. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSITE_DETAIL;
