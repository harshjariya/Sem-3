
-------------------------------------A----------------------------------

--1. Display the result of 5 multiply by 30.
select 5*30 

--2. Find out the absolute value of -25, 25, -50 and 50.
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50)

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
SELECT 5%2, 5%3

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
SELECT POWER(3,2),POWER(4,3)

--7. Find out the square root of 25, 30 and 50.
SELECT SQRT(25),SQRT(30),SQRT(50)

--8. Find out the square of 5, 15, and 25.
SELECT SQUARE(5),SQUARE(15),SQUARE(25)

--9. Find out the value of PI.
select pi()

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
select round(157.732,2),round(157.732,0),round(157.732,-2)

--11. Find out exponential value of 2 and 3.
select EXP(2),EXP(3)

--12. Find out logarithm having base e of 10 and 2.
select LOG(10),LOG(2)

--13. Find out logarithm having base b having value 10 of 5 and 100.
select LOG10(5),LOG10(100)


--14. Find sine, cosine and tangent of 3.1415.
select SIN(3.1415),cos(3.1415),tan(3.1415)

--15. Find sign of -25, 0 and 25.
select SIGN(-25),SIGN(0),SIGN(25)

--16. Generate random number using function.
select FLOOR(RAND()*100)

-------------------------------------------------------Part – B:-----------------------------------------------------------------
--1. Display the result of Salary plus Commission.


--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
SELECT 5%2, 5%3

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
SELECT POWER(23,2),POWER(14,3)

-------------------------------------------------------Part – C:-----------------------------------------------------------------
--1. Find out the square root of 36, 49 and 81.
SELECT SQRT(36),SQRT(49),SQRT(81)

--2. Find out the square of 3, 9, and 12.
SELECT SQUARE(3),SQUARE(9),SQUARE(12)

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
select round(280.8952,2),round(280.8952,0),round(280.8952,-2)

--4. Find sine, cosine and tangent of 4.2014.
select SIN(4.2014),cos(4.2014),tan(4.2014)

--5. Find sign of -55, 0 and 95.
select SIGN(-55),SIGN(0),SIGN(95)

------------------------------PART-A----------------------------------
------------------------------STRING----------------------------------
--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('HELLO'),LEN('BLANK')

--2. Display your name in lower & upper case.
SELECT LOWER('HARSH'),UPPER('harsh')

--3. Display first three characters of your name.
SELECT LEFT('HARSH',3)

--4. Display 3rd to 10th character of your name.
SELECT SUBSTRING('HARSH JARIYA',3,10)

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
SELECT REPLACE('abc123efg','123','XYZ')
SELECT REPLACE('abcabcabc','c','5')

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

--7. Write a query to display character based on number 97, 65,122,90,48,57.
SELECT CHAR('97'),CHAR('65'),CHAR('122'),CHAR('90'),CHAR('48'),CHAR('57')

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
SELECT RTRIM('HELLO')+LTRIM('WORLD')

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
SELECT LEFT('SQL SERVER',4) SELECT RIGHT('SQL SERVER',5)
--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
--13. Put 10 space before your name using function.
--14. Combine two strings using + sign as well as CONCAT ().
--15. Find reverse of “Darshan”.
--16. Repeat your name 3 times.
