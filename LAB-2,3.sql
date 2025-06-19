CREATE DATABASE CSE_3A_156;

--LAB-2 TABLE:-
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

--LAB-3:-

--SELECT Operation 
USE CSE_3A_156;
--Part � A: 
--From the above given tables perform the following queries: 

--1. Retrieve all data from table DEPOSIT.  
SELECT * FROM DEPOSITE;

--2. Retrieve all data from table BORROW.  
SELECT * FROM BORROW;

--3. Display Account No, Customer Name & Amount from DEPOSIT. 
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE;

--4. Display Loan No, Amount from BORROW. 
SELECT LOANNO,AMOUNT FROM BORROW;

--5. Display loan details of all customers who belongs to �ANDHERI� branch from borrow table.
SELECT * FROM BORROW
WHERE BNAME='ANDHERI';

--6. Give account no and amount of depositor, whose account no is equals to 106 from deposit table.  
SELECT ACTNO,AMOUNT FROM DEPOSITE
WHERE ACTNO=106;

--7. Give name of borrowers having amount greater than 5000 from borrow table.
SELECT CNAME FROM BORROW
WHERE AMOUNT>5000;

--8. Give name of customers who opened account after date '1-12-95' from deposit table.  
SELECT CNAME FROM DEPOSITE
WHERE ADATE>1-12-95;

--9. Display name of customers whose account no is less than 105 from deposit table. 
SELECT CNAME FROM DEPOSITE
WHERE ACTNO<105;

--10. Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (USE OR & 
--IN) 
SELECT CNAME FROM CUSTOMERS
WHERE CITY='NAGPUR' OR CITY='DELHI';

SELECT CNAME FROM CUSTOMERS
WHERE CITY IN ('NAGPUR','DELHI');

--11. Display name of customers with branch whose amount is greater than 4000 and account no is less than 
--105 from deposit table. 
SELECT CNAME,BNAME FROM DEPOSITE
WHERE AMOUNT>4000 AND ACTNO<105;

--12. Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow 
--table. (USE AND & BETWEEN) 
SELECT CNAME FROM BORROW
WHERE AMOUNT>=3000 AND AMOUNT<=8000;

SELECT CNAME FROM BORROW
WHERE AMOUNT BETWEEN 3000 AND 8000;

--13. Find all depositors who do not belongs to �ANDHERI� branch from deposit table. 
SELECT CNAME FROM DEPOSITE
WHERE BNAME!='ANDHERI';

--14. Display Account No, Customer Name & Amount of such customers who belongs to �AJNI�, �KAROLBAGH� 
--Or �M.G. ROAD� and Account No is less than 104 from deposit table. 
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSITE
WHERE BNAME IN ('AJNI','KAROLBAGH','M G ROAD') AND ACTNO<104;

--15. Display all loan no, customer from borrow table does not belong to �VIRAR� or �AJNI� branch. (use NOT 
--IN) 
SELECT LOANNO,CNAME FROM BORROW 
WHERE BNAME NOT IN ('VIRAR','AJNI');

--16. Display all the customer�s name other than �MINU� from deposit table (Use: NOT, <>, !=) 
SELECT CNAME FROM DEPOSITE 
WHERE NOT CNAME='MINU';

SELECT CNAME FROM DEPOSITE 
WHERE CNAME<>'MINU';

SELECT CNAME FROM DEPOSITE 
WHERE CNAME!='MINU';

--17. Display customer name from deposit table whose branch name is not available. (NULL) 
SELECT CNAME FROM DEPOSITE 
WHERE BNAME IS NULL;

--18. Retrieve all unique branches using DISTINCT. (Use Branch Table) 
SELECT DISTINCT BNAME FROM BRANCH

--19. Retrieve first 50% record from borrow table. 
SELECT TOP 50 PERCENT * FROM BORROW

--20. Retrieve first five account number from deposit table. 
SELECT TOP 5 * FROM DEPOSITE
 
--Part � B: 
--1. Display all the details of first five customers from deposit table. 
SELECT TOP 5 * FROM DEPOSITE

--2. Display all the details of first three depositors from deposit table whose amount is greater than 1000.
SELECT TOP 3 * FROM DEPOSITE
WHERE AMOUNT > 1000

--3. Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 
--�ANDHERI� from borrow table. 
SELECT TOP 5 LOANNO,CNAME FROM BORROW
WHERE BNAME='ANDHERI'

--4. Select all details with account numbers not in the range 105 to 109 in deposit table. 
SELECT TOP 4 * FROM DEPOSITE 

--5. Select all records from BORROW where the amount is greater than 1000 and less than or equal to 7000, 
--and the loan number is between 250 and 600 
SELECT * FROM BORROW 
WHERE (AMOUNT>1000 AND AMOUNT<=7000) AND (LOANNO BETWEEN 250 AND 600); 
 
--Part � C: 
--1. Display all the detail of customer who deposited more than 5000 without using * from deposit table. 
SELECT ACTNO,CNAME,BNAME,AMOUNT,ADATE FROM DEPOSITE 
WHERE AMOUNT>5000;

--2. Retrieve all unique customer names with city. (Use Customer table) 
SELECT DISTINCT CNAME,CITY FROM CUSTOMERS 

--3. Retrieve records from the BORROW table where the loan amount is greater than 3000 and the loan 
--number is not a multiple of 3. 
SELECT * FROM BORROW 
WHERE AMOUNT>3000 AND LOANNO%3!=0;

--4. Retrieve records from the DEPOSIT table where amount is greater than 2000 also account number is 
--between 100 and 110 and date is after '1-MAR-1995' or before '27-MAR-1996'. 
SELECT * FROM DEPOSITE 
WHERE (AMOUNT>2000) AND (ACTNO BETWEEN 100 AND 110) AND (ADATE BETWEEN 1-3-95 AND 27-3-96);

--5. Retrieve all odd/even value loan number from Borrow table. 
SELECT LOANNO FROM BORROW 
