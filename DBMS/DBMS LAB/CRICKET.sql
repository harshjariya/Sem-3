CREATE DATABASE CSE_3B_440

CREATE TABLE CRICKET(
	NAME VARCHAR(30),
	City VARCHAR(30),
)
INSERT INTO CRICKET VALUES
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M. S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30)
SELECT TOP (1000) [NAME]
      ,[City]
      ,[Age]
  FROM [CSE_3B_440].[dbo].[CRICKET]




DELETE FROM CRICKET WHERE NAME='SACHIN TENDULKAR'
SELECT * FROM CRICKET

--1. Create table Worldcup from cricket with all the columns and data. 
SELECT * INTO WORLDCUP FROM CRICKET
SELECT * FROM WORLDCUP


--2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=0
SELECT * FROM T20

DROP TABLE T20

--3. Create table IPL From Cricket with No Data
SELECT * INTO IPL FROM CRICKET WHERE 1=0
SELECT * FROM IPL

