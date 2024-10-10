use CSE_3B_440

CREATE TABLE EMP (
	EID INT,
	ENAME VARCHAR(50),
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(8,2),
	JOININGDATE DATETIME,
	CITY VARCHAR(50) 
);
INSERT INTO EMP VALUES (101,'RAHUL','ADMIN',56000,'1990-1-1','RAJKOT'),        (102,'Hardik','IT',18000,'1990-9-25','Ahmedabad'),
 (103,'Bhavin','HR',25000,'1991-5-14','Baroda'),
 (104,'Bhoomi','ADMIN',39000,'1991-2-8','RAJKOT'),
 (105,'Rohit','IT',17000,'1990-7-23','Jamnagar'),
 (106,'Priya','IT',9000,'1990-10-18','Ahmedabad'),
 (107,'Bhoomi','HR',34000,'1991-12-25','RAJKOT')

 SELECT * FROM EMP
 --PART-A


-- 1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
SELECT MAX(SALARY) AS MAX_SALARY,MIN(SALARY) AS MIN_SALARY FROM EMP


--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, 
--respectively.
SELECT SUM(SALARY) AS TOTAL_SALARY, AVG(SALARY) AS AVG_SALARY FROM EMP


--3. Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) AS TOTAL_EMPLOYEE FROM EMP


--4. Find highest salary from Rajkot city.
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP
WHERE CITY='RAJKOT'


--5. Give maximum salary from IT department.
SELECT MAX(SALARY) AS MAX_SALARY FROM EMP
WHERE DEPARTMENT='IT'


--6. Count employee whose joining date is after 8-feb-91.
SELECT COUNT(EID) FROM EMP
WHERE JOININGDATE > '1991-2-8'


--7. Display average salary of Admin department.
SELECT AVG(SALARY) AS AVG_SALARY FROM EMP
WHERE DEPARTMENT='ADMIN'

--8. Display total salary of HR department.
SELECT SUM(SALARY) FROM EMP
WHERE DEPARTMENT='HR'

--9. Count total number of cities of employee without duplication.
SELECT  COUNT(DISTINCT CITY) FROM EMP


--10. Count unique departments.
SELECT SUM(SALARY) FROM EMP
WHERE DEPARTMENT='HR'
SELECT COUNT(DISTINCT DEPARTMENT) FROM EMP

--11. Give minimum salary of employee who belongs to Ahmedabad.
SELECT MIN(SALARY) FROM EMP
WHERE CITY='AHMEDABAD'


--12. Find city wise highest salary.
SELECT CITY, MAX(SALARY) FROM EMP
GROUP BY CITY


--13. Find department wise lowest salary.
SELECT MIN(SALARY) FROM EMP
GROUP BY DEPARTMENT

--14. Display city with the total number of employees belonging to each city.
SELECT CITY,COUNT(EID) FROM EMP
GROUP BY CITY


--15. Give total salary of each department of EMP table.
SELECT DEPARTMENT,SUM(SALARY) AS TOTAL_SALARY FROM EMP
GROUP BY DEPARTMENT


--16. Give average salary of each department of EMP table without displaying the respective department 
--name
SELECT MAX(SALARY)-MIN(SALARY) AS DIFF FROM EMP




