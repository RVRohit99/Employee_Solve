-- CREATE DATABASE EMPLOYEE

-- USE EMPLOYEE

-- CREATE TABLE EMPLOYEES (
--     EMPID INT PRIMARY KEY,
--     FIRSTNAME VARCHAR(50),
--     LASTNAME VARCHAR(50),
--     SALARY INT, -- Adjusted size to accommodate larger salaries and added precision for decimal places
--     EMAILID VARCHAR(100), -- Increased size for email addresses
--     MANAGERID INT,
--     DATEOFJOINING DATE,
--     DEPT VARCHAR(100), -- Increased size for department names
--     COMPID INT
-- ); -- Ensure to terminate the statement with a semicolon

-- CREATE TABLE COMPUTER(
-- SRNO INT,
-- MODEL VARCHAR(255),
-- CODE VARCHAR(255),
-- MANUFACTURE DATE)

-- INSERT INTO COMPUTER VALUES (1001,'Lenovo','T480','2019-06-19');
-- INSERT INTO COMPUTER VALUES (1002,'Lenovo','T490','2020-08-24');
-- INSERT INTO COMPUTER VALUES (1003,'SONY','SQ112','2001-12-01');
-- INSERT INTO COMPUTER VALUES (1004,'SONY','SX1001','2021-12-21');
-- 	

-- INSERT INTO EMPLOYEES VALUES (1, 'NANDA', 'KUMAR', 50000, 'NANDA@GMAIL.COM', NULL, '2012-06-15', 'IT', 1001);

-- INSERT INTO EMPLOYEES VALUES (2, 'BIPLAB', 'PARIDA', 30000, 'BPARIDA@YAHOO.COM', 1, '2015-12-21', 'IT', 1001);

-- INSERT INTO EMPLOYEES VALUES (3, 'DISHA', 'PATEL', 50000, 'DISHAP@GMAIL.COM', NULL, '2013-08-21', 'HR', NULL);

-- INSERT INTO EMPLOYEES VALUES (4, 'SIBA', 'PRASAD', 90000, 'SIBA@GMAIL.COM', 3, '2020-06-01', 'HR', 1002);

-- INSERT INTO EMPLOYEES VALUES (5, 'ANUSHKA', 'SHARMA', 20000, 'SHARMAA@GMAIL.COM', 1, '2021-03-01', 'IT', NULL);

-- INSERT INTO EMPLOYEES VALUES (6, 'SOMNATH', 'MAHARANA', 65000, 'SMAHA@GMAIL.COM', 3, '2019-05-07', 'IT', 1003);

-- CREATE TABLE EMP_DUPLICSTE
-- SELECT * FROM EMPLOYEES

-- 1. SQL Query to update DateOfJoining to 15-jul-2012 for empid =1.

-- UPDATE EMPLOYEES SET DateOfJoining = '2012-07-15' WHERE EMPID = 1

-- 2. SQL Query to select all EMPLOYEE name where SALARY is greater than 30000

-- SELECT * FROM EMPLOYEES
-- WHERE SALARY >= 30000

-- 3. SQL Query to Find all employee with Salary between 40000 and 80000?

-- SELECT * FROM EMPLOYEES
-- WHERE SALARY BETWEEN 40000 AND 80000

-- 4. SQL Query to display full name?

-- SELECT CONCAT(FIRSTNAME,' ',LASTNAME) AS FULL_NAME
-- FROM EMPLOYEES

-- 5. SQL Query to find name of employee beginning with S?

-- SELECT * FROM EMPLOYEES
-- WHERE FIRSTNAME LIKE 'S%'

-- 6. Write a query to fetch details of employees whose firstname ends with an alphabet ‘A’
-- and contains exactly five alphabets ?

-- SELECT * FROM EMPLOYEES
-- WHERE FIRSTNAME LIKE '____A'

-- 7. Write a query to fetch details of all employees excluding few Employees :

-- SELECT * FROM EMPLOYEES
-- WHERE FIRSTNAME NOT IN('BIPLAB','DISHA')

-- 8. SQL query to display the current date ?

-- SELECT CURDATE()
-- SELECT CURRENT_DATE()

-- 9. SQL Query to get day of last day of the previous month:

-- SELECT DAYNAME(LAST_DAY(DATE_ADD(CURDATE()-1, INTERVAL -1 MONTH)))

--  10. SQL query to fetch the employee FIRST names and replace the A with ‘@’:

-- SELECT REPLACE(FIRSTNAME,'A','@') FROM EMPLOYEES

-- 11. Write an SQL query to fetch the domain from an email address:

-- SELECT SUBSTRING(EMAILID, INSTR(EMAILID,"@")+1) AS EMAIL FROM EMPLOYEES;

-- 12. Write an SQL query to update the employee names by removing leading and trailing spaces :
-- 	
-- UPDATE EMPLOYEES SET FIRSTNAME = TRIM(FIRSTNAME)

-- 13. Write an SQL query to fetch all the Employees details from Employee table who joined in the
-- Year 2020:

-- SELECT * FROM EMPLOYEES
-- WHERE DATEOFJOINING BETWEEN '2020-01-01' AND '2020-12-31'

-- 14. Write an SQL query to fetch only odd rows / Even rows from the table

-- SELECT * FROM EMPLOYEES
-- WHERE EMPID % 2 = 0

-- 15. Write an SQL query to create a new table with data and structure copied from another table:
-- CREATE TABLE EMP AS (SELECT * FROM EMPLOYEE);

-- CREATE TABLE EMP2 AS SELECT * FROM EMPLOYEES

-- 16. Write an SQL query to create an empty table with the same structure as some other table :

-- CREATE TABLE EMP2 AS SELECT * FROM EMPLOYEES WHERE 1 = 2

-- 17. Write an SQL query to fetch top 3 HIGHEST salaries :

-- SELECT
-- DISTINCT SALARY
-- FROM EMPLOYEES
-- ORDER BY SALARY DESC
-- LIMIT 3

-- 18. Find the first employee and last employee from employee table :

-- SELECT * FROM EMPLOYEES WHERE EMPID = (SELECT MIN(EMPID) FROM EMPLOYEES)

-- 19. List the ways to get the count of records in a table:

-- SELECT COUNT(EMPID) FROM EMPLOYEES

-- 20. Write a query to fetch the department-wise count of employees sorted by department’s count
-- in ascending order:

-- SELECT DEPT,
-- COUNT(*) AS COUNTOFEMPLOYEE
-- FROM EMPLOYEES
-- GROUP BY 1
-- ORDER BY DEPT ASC
