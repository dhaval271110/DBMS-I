USE CSE_3A_156;

--Implement SQL Joins
--Create below tables as per following data

CREATE TABLE STU_INFO(
	RNO INT,
	NAME VARCHAR(50),
	BRANCH VARCHAR(10)
);

INSERT INTO STU_INFO
VALUES
	(101,'RAJU','CE'),
	(102,'AMIT','CE'),
	(103,'SANJAY','ME'),
	(104,'NEHA','EC'),
	(105,'MEERA','EE'),
	(106,'MAHESH','ME')

SELECT * FROM STU_INFO;

CREATE TABLE RESULT(
	RNO INT,
	SPI DECIMAL(3,2)
);

INSERT INTO RESULT
VALUES
	(101,8.8),
	(102,9.2),
	(103,7.6),
	(104,8.2),
	(105,7.0),
	(107,8.9)

SELECT * FROM RESULT;

CREATE TABLE EMPLOYEE_MASTER(
	EMP_NO VARCHAR(5),
	EMP_NAME VARCHAR(10),
	MANAGER_NO VARCHAR(5)
);

INSERT INTO EMPLOYEE_MASTER 
VALUES
	('E01','Tarun ',NULL),
	('E02','Rohan','E02'),
	('E03','Priya ','E01'),
	('E04','Milan','E03'),
	('E05','Jay','E01'),
	('E06','Anjana ','E04')

SELECT * FROM EMPLOYEE_MASTER;

--Part – A:

--1. Combine information from student and result table using cross join or Cartesian product.
SELECT *
FROM STU_INFO CROSS JOIN RESULT;

--2. Perform inner join on Student and Result tables.
SELECT * 
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO;

--3. Perform the left outer join on Student and Result tables.
SELECT * 
FROM STU_INFO LEFT OUTER JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO;

--4. Perform the right outer join on Student and Result tables.
SELECT * 
FROM STU_INFO RIGHT OUTER JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO;

--5. Perform the full outer join on Student and Result tables.
SELECT * 
FROM STU_INFO FULL JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO;

--6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH='CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH != 'EC';

--9. Display average result of each branch.
SELECT AVG(SPI),BRANCH AS AVG_SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH;

--10. Display average result of CE and ME branch.
SELECT AVG(SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH IN ('CE','ME')
GROUP BY BRANCH;

--11. Display Maximum and Minimum SPI of each branch.
SELECT MAX(SPI) AS MAX_SPI,MIN(SPI) AS MIN_SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH;

--12. Display branch wise student’s count in descending order.
SELECT COUNT(STU_INFO.RNO) AS TOTAL_STU
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY TOTAL_STU DESC; 

--Part – B:

--1. Display average result of each branch and sort them in ascending order by SPI.
SELECT AVG(SPI) AS AVG_SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY AVG_SPI;

--2. Display highest SPI from each branch and sort them in descending order.
SELECT MAX(SPI) AS MAX_SPI
FROM STU_INFO JOIN RESULT 
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY MAX_SPI DESC; 

--Part – C:

--1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT E1.EMP_NAME ,E2.EMP_NAME
FROM EMPLOYEE_MASTER E1 JOIN EMPLOYEE_MASTER E2
ON E1.EMP_NO = E2.MANAGER_NO;
