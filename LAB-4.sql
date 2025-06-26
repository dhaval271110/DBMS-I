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