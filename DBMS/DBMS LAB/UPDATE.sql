USE CSE_3B_440

--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE BORROW SET BNAME='C.G.ROAD' WHERE BNAME='VRCE'

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET ACTNO=111,AMOUNT=5000 WHERE CNAME='SANDIP'

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=7000 WHERE CNAME='KRANTI'

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE CNAME='MEHUL'

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use DepositTable)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE ACTNO BETWEEN 103 AND 107

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE ='1-APR-1995' WHERE CNAME='ANIL'

--9. Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=10000 WHERE CNAME='MINU'

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT SET ADATE='1-APR-1996',AMOUNT=5000 WHERE CNAME='PRAMOD'

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
SELECT LOANNO FROM BORROW WHERE LOANNO%2!=0

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
SELECT LOANNO FROM BORROW WHERE LOANNO%2=0

--1. Update amount of loan no 321 to NULL. (Use Borrow Table)


--2. Update branch name of KRANTI to NULL (Use Borrow Table)


--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)


--4. Display the Borrowers whose having branch. (Use Borrow Table)


--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.(Use Borrow Table)


--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is lessthan 2000.


--7. Update the Deposit table and set the date to NULL & Branch name to �ANDHERI whose Account No is 110.

