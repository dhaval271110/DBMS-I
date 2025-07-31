USE CSE_3A_156;

--String functions

--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN(' ');

--2. Display your name in lower & upper case.
SELECT LOWER('DHAVAL'),UPPER('DHAVAL');

--3. Display first three characters of your name.
SELECT LEFT('DHAVAL',3);

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('DHAVAL SIDDHAPURA',3,10);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('ABC123EFG','123','XYZ');
SELECT REPLACE('abcabcabc','C','5');

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