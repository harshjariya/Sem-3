use CSE_3B7_432

CREATE TABLE EMP (
    EID INT PRIMARY KEY,
    EName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    JoiningDate DATE,
    City VARCHAR(50)
);

INSERT INTO EMP (EID, EName, Department, Salary, JoiningDate, City) VALUES
(101, 'Rahul', 'Admin', 56000, '1990-01-01', 'Rajkot'),
(102, 'Hardik', 'IT', 18000, '1990-09-25', 'Ahmedabad'),
(103, 'Bhavin', 'HR', 25000, '1991-05-14', 'Baroda'),
(104, 'Bhoomi', 'Admin', 39000, '1991-02-08', 'Rajkot'),
(105, 'Rohit', 'IT', 17000, '1990-07-23', 'Jamnagar'),
(106, 'Priya', 'IT', 9000, '1990-10-18', 'Ahmedabad'),
(107, 'Bhoomi', 'HR', 34000, '1991-12-25', 'Rajkot');

select * from EMP


--1.Calculate the average salary of employees hired after 1st January, 1991. Label the column as Average_Salary_After_1991.
select  avg(Salary) as Average_Salary_After_1991 
from EMP 
where JoiningDate > '1990-01-01'
group by Salary 

   
--2.Find the total number of employees in each department.
select COUNT(EID) as count_emp from EMP
group by Department

--3.Display the total salary of employees in each city in descending order.
select sum(Salary) as total_sal from Emp
group by City
order by sum(Salary) desc

--4.Find the total number of employees in each city.
select COUNT(EName) as total_emp from Emp
group by City 

--5.Find the highest salary among all employees.
select Max(Salary) as highrst_sal from Emp

--6.Retrieve the maximum salary from the IT department.
select Max(Salary) as highrst_sal from Emp
where Department = 'IT'

--7.Count the total number of distinct cities where employees reside.
select distinct count(City) as city_emp from Emp
group by city


--8.Calculate the total salary of each department.
select sum(Salary) as max_dep_sal from EMP
group by Department

--9.Find the minimum salary of an employee residing in Ahmedabad.
select min(Salary) as min_am_EMP from EMP
group by City 
having City = 'Ahmedabad'
   
--10.List the departments with total salaries exceeding 50000 and located in Rajkot.
select sum(Salary) as sal_raaj from EMP 
group by Department 
having sum(Salary) > 50000 and City = 'Rajkot'
   
--11.List the departments with total salaries exceeding 35000 and sort the list by total salary.
    SELECT SUM(Salary) as total from EMP
	GROUP BY DEPARTMENT
	HAVING SUM(SALARY)>35000 

--12.List departments with more than two employees.
	SELECT COUNT(EID) AS EID FROM EMP
	GROUP BY DEPARTMENT 
	HAVING COUNT(ENAME)>2


--13.Show departments where the average salary is above 25000.
	SELECT  DEPARTMENT FROM EMP 
	GROUP  BY DEPARTMENT
	HAVING AVG(SALARY)>25000

    
--14.Retrieve cities with employees hired before 1st January 1991.
	SELECT CITY,ENAME FROM EMP
	WHERE JOININGDATE<'1991-01-01'


--15.Find departments with a total salary between 50000 and 100000.
	SELECT DEPARTMENT FROM EMP 
	WHERE SALARY BETWEEN 5000 AND 100000