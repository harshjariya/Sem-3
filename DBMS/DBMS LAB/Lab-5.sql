USE CSE_3B_440

CREATE TABLE STUDENT

StuID INT,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Website VARCHAR(50),
City VARCHAR(25),
Address VARCHAR(100)
)

INSERT INTO STUDENT VALUES
(1011, 'Keyur', 'Patel', 'techonthenet.com', 'Rajkot', 'A-303''Vasant Kunj'', Rajkot'),
(1022, 'Hardik','Shah', 'digminecraft.com', 'Ahmedabad', '"Ram Krupa", Raiya Road'),
(1033, 'Kajal', 'Trivedi', 'bigactivities.com', 'Baroda', 'Raj bhavan plot, near 
garden'),
(1044, 'Bhoomi', 'Gajera', 'checkyourmath.com', 'Ahmedabad', '"Jig’s Home", Narol') ,
(1055, 'Harmit', 'Mitel','@me.darshan.com', 'Rajkot',' B-55, Raj Residency'),
(1066, 'Ashok', 'Jani', NULL, 'Baroda', 'A502, Club House Building')

SELECT * FROM STUDENT

--1. Display the name of students whose name starts with ‘k’.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE'K%'

--2. Display the name of students whose name consists of five characters.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_____'

--3. Retrieve the first name & last name of students whose city name ends with a & contains six characters.
	SELECT FIRSTNAME,LASTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_____A' AND LASTNAME LIKE '_____A' 

--4. Display all the students whose last name ends with ‘tel’.
	SELECT LASTNAME FROM STUDENT WHERE LASTNAME LIKE '%TEL'

--5. Display all the students whose first name starts with ‘ha’ & ends with‘t’.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'HA%' AND FIRSTNAME LIKE '%T'

--6. Display all the students whose first name starts with ‘k’ and third character is ‘y’.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '%K_Y%'

--7. Display the name of students having no website and name consists of five characters.
	SELECT WEBSITE,FIRSTNAME FROM STUDENT WHERE WEBSITE IS NULL AND FIRSTNAME  NOT LIKE'_____'

--8. Display all the students whose last name consist of ‘jer’. 
	SELECT LASTNAME FROM STUDENT WHERE LASTNAME LIKE '%JER%'

--9. Display all the students whose city name starts with either ‘r’ or ‘b’.
	SELECT CITY FROM STUDENT WHERE CITY LIKE '[R,B]%'

--10. Display all the name students having websites.
	SELECT FIRSTNAME FROM STUDENT WHERE WEBSITE IS NOT NULL

--11. Display all the students whose name starts from alphabet A to H.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE 'A-H'

--12. Display all the students whose name’s second character is vowel.
	SELECT FIRSTNAME FROM STUDENT WHERE FIRSTNAME LIKE '_[A,E,I,O,U]'

--13. Display the name of students having no website and name consists of minimum five characters.
	SELECT WEBSITE,FIRSTNAME FROM STUDENT WHERE WEBSITE IS NULL AND FIRSTNAME LIKE'_____'

--14. Display all the students whose last name starts with ‘Pat’. 
	SELECT LASTNAME FROM STUDENT WHERE LASTNAME LIKE 'Pat%'
--15. Display all the students whose city name does not starts with ‘b’.
	SELECT CITY FROM STUDENT WHERE CITY  NOT LIKE 'B%'
