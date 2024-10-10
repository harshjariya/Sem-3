
--CUSTOMERS

CREATE TABLE CUSTOMERS
(
	CNAME	VARCHAR(50),
    CITY	VARCHAR(50)
)

--INSERT INTO table_name
--VALUES
--('value1','value2')
--('value3','value4')


INSERT INTO CUSTOMERS
VALUES
('ANIL', 'CALCUTTA'),
('SUNIL', 'DELHI'), 
('MEHUL', 'BARODA'), 
('MANDAR', 'PATNA'), 
('MADHURI','NAGPUR'), 
('PRAMOD','NAGPUR'), 
('SANDIP','SURAT'),
('SHIVANI','BOMBAY'),
('KRANTI', 'BOMBAY'),
('NAREN', 'BOMBAY')

SELECT * FROM CUSTOMERS


--BORROW

CREATE TABLE BORROW
(
	LOANNO	INT,
	CNAME	VARCHAR(50),
	BNAME	VARCHAR(50),
	AMOUNT	DECIMAL(8,2)
)


INSERT INTO BORROW
VALUES
(201, 'ANIL', 'VRCE', 1000.00), 
(206,'MEHUL', 'AJNI', 5000.00),
(311,'SUNIL', 'DHARAMPETH', 3000.00), 
(321,'MADHURI', 'ANDHERI' ,2000.00), 
(375,'PRMOD', 'VIRAR' ,8000.00), 
(481,'KRANTI', 'NEHRU PLACE', 3000.00) 

SELECT * FROM BORROW


