USE CSE_3A_156;

--From the above given table perform the following queries:
--Part – A:
--1. List all books with their authors.
SELECT TITLE , AUTHOR_NAME 
FROM BOOK JOIN AUTHOR 
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID 

--2. List all books with their publishers.
SELECT TITLE , PUBLISHER_NAME  
FROM BOOK JOIN PUBLISHER 
ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID 

--3. List all books with their authors and publishers.
SELECT TITLE , AUTHOR_NAME , PUBLISHER_NAME
FROM BOOK JOIN AUTHOR 
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID 
JOIN PUBLISHER ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID;

--4. List all books published after 2010 with their authors and publisher and price.
SELECT TITLE , AUTHOR_NAME , PUBLISHER_NAME ,PUBLICATION_YEAR , PRICE
FROM BOOK JOIN AUTHOR 
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID 
JOIN PUBLISHER ON BOOK.PUBLISHER_ID = PUBLISHER.PUBLISHER_ID;

--5. List all authors and the number of books they have written.
SELECT  AUTHOR_NAME , COUNT(BOOK.AUTHOR_ID) AS WRITTEN_BOOKS
FROM BOOK JOIN AUTHOR 
ON BOOK.AUTHOR_ID = AUTHOR.AUTHOR_ID
GROUP BY AUTHOR_NAME;

--6. List all publishers and the total price of books they have published.
--7. List authors who have not written any books.
--8. Display total number of Books and Average Price of every Author.
--9. lists each publisher along with the total number of books they have published, sorted from highest to
--lowest.
--10. Display number of books published each year.
--Part – B:
--1. List the publishers whose total book prices exceed 500, ordered by the total price.
--2. List most expensive book for each author, sort it with the highest price.
--Part – C: Create table as per following schema with proper validation and try to insert data which violate your
--validation.
--1. Emp_info(Eid, Ename, Did, Cid, Salary, Experience)
--Dept_info(Did, Dname)
--City_info(Cid, Cname, Did))
--District(Did, Dname, Sid)
--State(Sid, Sname, Cid)
--Country(Cid, Cname)
--2. Insert 5 records in each table.
--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all
--employees.
--Lab 14 Perform SQL queries for S