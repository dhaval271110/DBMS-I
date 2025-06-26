USE CSE_3A_156;

--LAB 4 PART A TABLE:-
			
			CREATE TABLE CRICKET(
				NAME VARCHAR (50),
				CITY VARCHAR (50),
				AGE INT
			)

			INSERT INTO CRICKET 
			VALUES
				
				('SACHIN TENDULKAR','MUMBAI',30),
				('RAHUL DRAVID','BOMBAY',35),
				('M. S. DHONI','JHARKHAND',31),
				('SURESH RAINA','GUJARAT',30);

				SELECT * FROM CRICKET;
--PART-A

--Select into Operation 
--Part – A:  
--Create table as per following.

--1. Create table Worldcup from cricket with all the columns and data. 
SELECT *
INTO WORLDCUP
FROM CRICKET;

--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY
INTO T20
FROM CRICKET
WHERE 1=0;

--3. Create table IPL From Cricket with No Data. 
SELECT *
INTO IPL
FROM CRICKET
WHERE 1=0;

--4. Select players who are either older than 30 and from 'Mumbai' or exactly 31 years old and not from 
--'Bombay', and insert them into a new table PLAYER. 
SELECT NAME 
INTO PLAYER
FROM CRICKET
WHERE (AGE>30 AND CITY='MUMBAI') OR (AGE=31 AND CITY!='BOMBAY');

--5. Select players whose age is a prime number or their city belongs to India Country, and insert them into 
--a new table PLAYER_INFO. (Consider Cricketer age between 18 to 55) 
SELECT NAME 
INTO PLAYER_INFO
FROM CRICKET
WHERE (AGE IN(19,23,29,31,37,41,47,53)) OR (CITY IN('MUMBAI','BOMBAY','JHARKHAND','GUJARAT'));

--6. Select players whose age is a multiple of 5 and insert them into a new table PLAYER_DATA. 
SELECT NAME
INTO PLAYER_DATA
FROM CRICKET
WHERE AGE%5=0;

--7. Insert the cricketer into IPL table whose city is ‘Jharkhand’ 
INSERT INTO IPL
SELECT * FROM CRICKET 
WHERE CITY='JHARKHAND';

--LAB 4 PART-B TABLE:-

CREATE TABLE EMPLOYEE(
	NAME VARCHAR (50),
	CITY VARCHAR (50),
	AGE INT
	)

	INSERT INTO EMPLOYEE 
	VALUES
				
	('JAY PATEL','RAJKOT',30),
	('RAHUL DAVE','BARODA',35),
	('JEET PATEL','SURAT',31),
	('VIJAY RAVAL','RAJKOT',30);

	SELECT * FROM EMPLOYEE;

--PART B

--1. Create table Employee_detail from Employee with all the columns and data.  
SELECT *
INTO EMPLOYEE_DETAIL
FROM EMPLOYEE;

--2. Create table Employee_data from Employee with first two columns with no data. 
SELECT NAME,CITY
INTO EMPLOYEE_DATA
FROM EMPLOYEE
WHERE 1=0;

--3. Create table Employee_info from Employee with no Data 
SELECT *
INTO EMPLOYEE_INFO
FROM EMPLOYEE
WHERE 1=0;

--PART C

--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_INFO
SELECT * 
FROM EMPLOYEE
WHERE CITY='RAJKOT';

--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_INFO
SELECT * 
FROM EMPLOYEE
WHERE AGE>32;

--Update Operation 
--Part – A:  
--From the above given tables perform the following queries (UPDATE Operation): 

CREATE TABLE DEPOSITE(
	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
);

INSERT INTO DEPOSITE
VALUES
	(101,'ANIL','VRCE',1000.00,1-3-95),
	(102,'SUNIL','AJNI',5000.00,4-1-96),
	(103,'MEHUL','KAROLBAGH',3500,17-11-95),
	(104,'MADHURI','CHANDI',1200,17-12-95),
	(105,'PRAMOD','M G ROAD',3000,27-6-96),
	(106,'SANDIP','ANDHERI',2000,31-3-96),
	(107,'SHIVANI','VIRAR',1000,5-9-95),
	(108,'KRANTI','NEHRU PALACE',5000,2-7-95),
	(109,'MINU','POWAI',7000,10-8-95)

	SELECT * FROM DEPOSITE;

	CREATE TABLE BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
	)

	INSERT INTO BRANCH
	VALUES
		('VRCE','NAGPUR'),
		('AJNI','NAGPUR'),
		('KAROLBAGH','DELHI'),
		('CHANDI','DELHI'),
		('DHARAMPETH','NAGPUR'),
		('M G ROAD','BANGLORE'),
		('ANDHERI','BOMBAY'),
		('VIRAR','BOMBAY'),
		('NEHRU PALACE','DELHI'),
		('POWAI','BOMBAY')

		SELECT * FROM BRANCH;
		

		CREATE TABLE CUSTOMERS(
		CNAME VARCHAR(50),
		CITY VARCHAR(50)
		)
		INSERT INTO CUSTOMERS
		VALUES
			('ANIL','CALCUTTA'),
			('SUNIL','DELHI'),
			('MEHUL','BARODA'),
			('MANDAR','PATNA'),
			('MADHURI','NAGPUR'),
			('PRAMOD','NAGPUR'),
			('SANDIP','SURAT'),
			('SHIVANI','BOMBAY'),
			('KRANTI','BOMBAY'),
			('NAREN','BOMBAY')

			SELECT * FROM CUSTOMERS

			CREATE TABLE BORROW(
			LOANNO INT,
			CNAME VARCHAR(50),
			BNAME VARCHAR(50),
			AMOUNT DECIMAL(8,2)
			)

			INSERT INTO BORROW
			VALUES
				(201,'ANIL','VRCE',1000),
				(206,'MEHUL','AJNI',5000),
				(311,'SUNIL','DHARAMPETH',3000),
				(321,'MADHURI','ANDHERI',2000),
				(375,'PRAMOD','VIRAR',8000),
				(481,'KRANTI','NEHRU PALACE',3000)

				SELECT * FROM BORROW;


--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table) 
	UPDATE DEPOSITE
	SET AMOUNT=5000
	WHERE AMOUNT=3000;

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)  
	UPDATE BORROW
	SET BNAME='C.G. ROAD'
	WHERE CNAME='ANIL';

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table) 
	 UPDATE DEPOSITE
	 SET ACTNO=111 , AMOUNT=5000
	 WHERE CNAME='SANDIP';

--4. Update amount of KRANTI to 7000. (Use Deposit Table) 
	UPDATE DEPOSITE
	SET AMOUNT=7000
	WHERE CNAME='KRANTI';

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table) 
	UPDATE BRANCH
	SET BNAME='ANDHERI WEST'
	WHERE BNAME='ANDHERI';

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table) 
	UPDATE DEPOSITE
	SET BNAME='NEHRU PALACE'
	WHERE CNAME='MEHUL';

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit 
--Table) 
	UPDATE DEPOSITE
	SET AMOUNT=5000
	WHERE ACTNO BETWEEN 103 AND 107;

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
	UPDATE DEPOSITE
	SET ADATE=1-4-95
	WHERE CNAME='ANIL';

--9. Update the amount of MINU to 10000. (Use Deposit Table) 
	UPDATE DEPOSITE
	SET AMOUNT=10000
	WHERE CNAME='MINU';

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
	UPDATE DEPOSITE
	SET AMOUNT=5000,ADATE='1-4-96'
	WHERE CNAME='PRAMOD';

--Part – B:  

--1. Give 10% Increment in Loan Amount. (Use Borrow Table) 
	UPDATE BORROW
	SET AMOUNT=AMOUNT*1.1
	WHERE 1=1;

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table) 

	SELECT * FROM DEPOSITE;

	UPDATE DEPOSITE
	SET AMOUNT=AMOUNT*1.2
	WHERE CNAME='MADHURI';

--3. Increase Amount by 1000 in all the account.  (Use Deposit Table) 
	UPDATE DEPOSITE
	SET AMOUNT=AMOUNT+1000;

--4. Update the BORROW table to set the amount to 7000 and the branch name to 'CENTRAL' where the 
--customer name is ‘MEHUL’ and the loan number is even.   
	UPDATE BORROW 
	SET AMOUNT=7000,BNAME='CENTRAL'
	WHERE CNAME='MEHUL' AND LOANNO%2=0;

--5. Update the DEPOSIT table to set the date to '2022-05-15' and the amount to 2500 for all accounts in 
--‘VRCE’ and with an account number less than 105.
	UPDATE DEPOSITE
	SET ADATE='2022-05-15' , AMOUNT =2500
	WHERE BNAME='VRCE' AND ACTNO<105;

--Part – C:  

--1. Update amount of loan no 321 to NULL. (Use Borrow Table) 
	UPDATE BORROW 
	SET AMOUNT=NULL
	WHERE LOANNO=321;

--2. Update branch name of KRANTI to NULL (Use Borrow Table) 
	UPDATE BORROW 
	SET BNAME=NULL 
	WHERE CNAME='KRANTI';

--3. Display the name of borrowers whose Loan number is NULL. (Use Borrow Table) 
	SELECT CNAME FROM BORROW	
	WHERE LOANNO IS NULL;

--4. Display the Borrowers whose having branch. (Use Borrow Table) 
	SELECT CNAME FROM BORROW 
	WHERE BNAME IS NOT NULL;

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481. 
--(Use Borrow Table) 
	UPDATE BORROW 
	SET AMOUNT=5000 , BNAME='VRCE' , CNAME='DARSHAN'
	WHERE LOANNO=481;

--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less 
--than 2000. 
	UPDATE DEPOSITE 
	SET ADATE='01-01-2021'
	WHERE AMOUNT<2000;

--7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 
--110. 
	 UPDATE DEPOSITE
	 SET ADATE=NULL , BNAME='ANDHERI'
	 WHERE ACTNO=110;
