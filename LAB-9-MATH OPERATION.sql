USE CSE_3A_156;

--Implement SQL In-built functions (Math, String, and Date Functions)

--Math functions

--Part – A:

--1. Display the result of 5 multiply by 30.
SELECT 5*30;

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2,5%3;

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2),POWER(4,3);

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50);

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25);

--9. Find out the value of PI.
SELECT PI();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
SELECT ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-3)

--11. Find out exponential value of 2 and 3.
SELECT EXP(2),EXP(3);

--12. Find out logarithm having base e of 10 and 2.
SELECT LOG(10),LOG(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
SELECT LOG(5,10),LOG(5,100);

--14. Find sine, cosine and tangent of 3.1415.
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415);

--15. Find sign of -25, 0 and 25.
SELECT SIGN(-25),SIGN(-0),SIGN(25);

--16. Generate random number using function.
SELECT RAND();

--Part – B:

--Create and insert the following records in the EMP_MASTER table.

CREATE TABLE EMP_MASTER
(
	EMP_NO INT,
	EMP_NAME VARCHAR(20),
	JOINING_DATE DATE,
	SALARY DECIMAL(8,2),
	COMMISSION DECIMAL(7,2),
	CITY VARCHAR(10),
	DEPT_CODE VARCHAR(10)
);

INSERT INTO EMP_MASTER
VALUES
	(101,'KEYUR','2002-01-05',12000,4500,'RAJKOT','3@G'),
	(102,'HARDIK','2004-02-15',14000,2500,'AHEMDABAD','3@'),
	(103,'KAJAL','2006-3-14',15000,3000,'BARODA','3-GD'),
	(104,'BHOOMI','2005-06-23',12500,1000,'AHEMDABAD','1A3D'),
	(105,'HARMIT','2004-02-15',14000,2000,'RAJKOT','312A')

SELECT * FROM EMP

--1. Display the result of Salary plus Commission
SELECT SALARY + COMMISSION FROM EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2);

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 55%2,55%3;

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2),POWER(14,3);

--Part – C:
--1. Retrieve the details of employees whose total earnings (Salary + Commission) are greater than 15000.
SELECT SALARY + COMMISSION FROM EMP_MASTER
WHERE (SALARY+COMMISSION)>15000;

--2. Find the details of employees whose commission is more than 25% of their salary.
SELECT * FROM EMP_MASTER
WHERE COMMISSION>SALARY*0.25;

--3. List the employees who joined before 2005 and whose total earnings (Salary + Commission) are greater
--than 15000.
SELECT * FROM EMP_MASTER 
WHERE JOINING_DATE<'2005-01-01' AND (Salary + Commission)>15000; 

--4. Find employees whose total earnings (Salary + Commission) are at least double their salary.SELECT * FROM EMP_MASTER 
WHERE (Salary + Commission)>=SALARY*2;

--String functions

--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN(' ');

--2. Display your name in lower & upper case.
SELECT LOWER('DHAVAL'),UPPER('DHAVAL');

--3. Display first three characters of your name.

--4. Display 3rd to 10th character of your name.
--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
--7. Write a query to display character based on number 97, 65,122,90,48,57.
--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
--13. Put 10 space before your name using function.
--14. Combine two strings using + sign as well as CONCAT ().
--15. Find reverse of “Darshan”.
--16. Repeat your name 3 times.
--Part – B: Perform following queries on EMP_MASTER table.
--1. Find the length of EMP Name and City columns.
--2. Display EMP Name and City columns in lower & upper case.
--3. Display first three characters of EMP Name column.
--4. Display 3rd to 10th character of city column.
--5. Write a query to display first 4 & Last 5 characters of EMP Name column.
--Part – C: Perform following queries on EMP_MASTER table.
--1. Put 10 space before EMP Name using function.
--2. Combine EMP Name and city columns using + sign as well as CONCAT ().
--3. Combine all columns using + sign as well as CONCAT ().
--4. Combine the result as < EMP Name > Lives in <City>.
--5. Combine the result as ‘EMP no of < EMP Name> is <EmpNo> .
--6. Retrieve the names of all employee where the third character of the Name is a vowel.
--7. Concatenate the name and city of students who have a name that ends with the letter 'r' and a city that
--starts with 'R'