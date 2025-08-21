USE CSE_3A_156;

--Implement Complex Joins 
--Create following table (Using Design Mode)

CREATE TABLE PERSON(
	PERSON_ID INT PRIMARY KEY,
	PERSON_NAME VARCHAR(50) NOT NULL,
	DEPT_ID INT FOREIGN KEY REFERENCES DEPT(DEPT_ID) NULL,
	SALARY DECIMAL(8,2) NOT NULL,
	JOINING_DATE DATE NOT NULL,
	CITY VARCHAR(100) NOT NULL
);

DROP TABLE PERSON;

INSERT INTO PERSON
VALUES 
	(101,'Rahul Tripathi',2,56000,'2000-01-01','Rajkot'),
	(102,'Hardik Pandya',3,18000,'2001-09-25','Ahmedabad'),
	(103,'Bhavin Kanani',4,25000,'2000-05-14','Baroda'),
	(104,'Bhoomi Vaishnav',1,39000,'2005-02-08','Rajkot'),
	(105,'Rohit Topiya',2,17000,'2005-07-23','Jamnagar'),
	(106,'Priya Menpara',NULL,9000,'2000-10-18','Ahmedabad'),
	(107,'Neha Sharma',2,34000,'2002-12-25','Rajkot'),
	(108,'Nayan Goswami',3,25000,'2001-07-01','Rajkot'),
	(109,'Mehul Bhundiya',4,13500,'2005-01-09','Baroda'),
	(110,'Mohit Maru',5,14000,'2000-05-25','Jamnagar')

SELECT * FROM PERSON;

CREATE TABLE DEPT(
	DEPT_ID INT PRIMARY KEY,
	DEPT_NAME VARCHAR(100) NOT NULL UNIQUE,
	DEPT_CODE VARCHAR(50) NOT NULL UNIQUE,
	LOCATION VARCHAR(50) NOT NULL
);

INSERT INTO DEPT 
VALUES 
	(1,'ADMIN','ADM','A-BLOCK'),
	(2,'COMPUTER','CE','C-BLOCK'),
	(3,'CIVIL','CI','G-BLOCK'),
	(4,'ELECTRICAL','EE','E-BLOCK'),
	(5,'MECHANICAL','ME','B-BLOCK')
	
SELECT * FROM DEPT;

--From the above given table perform the following queries:

--Part – A:

--1. Combine information from Person and Department table using cross join or Cartesian product.
SELECT *
FROM PERSON CROSS JOIN DEPT ;

--2. Find all persons with their department name
SELECT PERSON_NAME , DEPT_NAME 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID;

--3. Find all persons with their department name & code.
SELECT PERSON_NAME , DEPT_NAME , DEPT_CODE 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID;

--4. Find all persons with their department code and location.
SELECT PERSON_NAME, LOCATION , DEPT_CODE 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID;

--5. Find the detail of the person who belongs to Mechanical department.
SELECT PERSON_NAME , DEPT_NAME 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE DEPT_NAME = 'MECHANICAL';

--6. Final person’s name, department code and salary who lives in Ahmedabad city.
SELECT PERSON_NAME , SALARY , DEPT_CODE 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE CITY = 'AHMEDABAD';

--7. Find the person's name whose department is in C-Block.
SELECT PERSON_NAME , LOCATION 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE LOCATION  = 'C-BLOCK';

--8. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT PERSON_NAME , DEPT_NAME , SALARY , CITY 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE CITY = 'JAMNAGAR';

--9. Retrieve person’s detail who joined the Civil department after 1-Aug-2001.
SELECT PERSON_NAME , DEPT_NAME , JOINING_DATE 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE DEPT_NAME = 'CIVIL' AND JOINING_DATE > '2001-08-01';

--10. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
SELECT PERSON_NAME , DEPT_NAME , JOINING_DATE 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE (GETDATE() - CAST(JOINING_DATE AS DATETIME)) > 365;

--11. Find department wise person counts.
SELECT COUNT(PERSON_NAME) AS PERSON_COUNT , DEPT_NAME 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
GROUP BY DEPT_NAME;

--12. Give department wise maximum & minimum salary with department name.
SELECT   MAX(SALARY) AS MAX_SALARY , MIN(SALARY) AS MIN_SALARY ,DEPT_NAME 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
GROUP BY DEPT_NAME;

--13. Find city wise total, average, maximum and minimum salary.
SELECT   MAX(SALARY) AS MAX_SALARY , MIN(SALARY) AS MIN_SALARY , AVG(SALARY) AS AVG_SALARY ,SUM(SALARY) AS TOTAL_SALARY , DEPT_NAME 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
GROUP BY DEPT_NAME;

--14. Find the average salary of a person who belongs to Ahmedabad city.
SELECT  AVG(SALARY) AS AVG_SALARY  , CITY 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
WHERE CITY = 'AHMEDABAD' 
GROUP BY CITY;

--13. Find city wise total, average, maximum and minimum salary.
SELECT   MAX(SALARY) AS MAX_SALARY , MIN(SALARY) AS MIN_SALARY , AVG(SALARY) AS AVG_SALARY ,SUM(SALARY) AS TOTAL_SALARY , CITY 
FROM PERSON JOIN DEPT 
ON PERSON.DEPT_ID = DEPT.DEPT_ID
GROUP BY CITY;

--15. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)
--Part – B:
--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In
--single column)
--2. Find city & department wise total, average & maximum salaries.
--3. Find all persons who do not belong to any department.
--4. Find all departments whose total salary is exceeding 100000.
--Part – C:
--1. List all departments who have no person.
--2. List out department names in which more than two persons are working.
--3. Give a 10% increment in the computer department employee’s salary. (Use Update)