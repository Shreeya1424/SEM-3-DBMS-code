CREATE DATABASE CSE_3A_258

CREATE TABLE DEPOSIT(

	ACTNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2),
	ADATE DATETIME
);
CREATE TABLE BRANCH(
	BNAME VARCHAR(50),
	CITY VARCHAR(50)
);
CREATE TABLE CUSTOMERS(
	CNAME VARCHAR(50),
	CITY VARCHAR(50)
)
CREATE TABLE BORROW(
	LOANNO INT,
	CNAME VARCHAR(50),
	BNAME VARCHAR(50),
	AMOUNT DECIMAL(8,2)
);
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (101,'ANIL','VRCE',1000.00,'1995-03-01');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (102,'SUNIL','AJNI',5000.00,'1996-01-04');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (103,'MEHUL','KAROLBAGH',3500.00,'1995-11-17');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (104,'MADHURI','CHANDI',1200.00,'1995-12-17');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (105,'PRAMOD','M.G. ROAD',3000.00,'1996-03-27');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (106,'SANDIP','ANDHERI',2000.00,'1996-03-31');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (107,'SHIVANI','VIRAR',1000.00,'1995-09-05');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (108,'KRANTI','NEHRU PLACE',5000.00,'1995-07-02');
INSERT INTO DEPOSIT (ACTNO,CNAME,BNAME,AMOUNT,ADATE) VALUES (109,'MINU','POWAI',7000.00,'1995-08-10');
SELECT * FROM DEPOSIT

INSERT INTO BRANCH (BNAME,CITY) VALUES ('VRCE','NAGPUR');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('AJNI','NAGPUR');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('KAROLBAGH','DELHI');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('CHANDI','DELHI');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('DHARAMPETH','NAGPUR');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('M.G. ROAD','BANGLORE');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('ANDHERI','BOMBAY');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('VIRAR','BOMBAY');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('NEHRU PLACE','DELHI');
INSERT INTO BRANCH (BNAME,CITY) VALUES ('POWAI','BOMBAY');
SELECT * FROM BRANCH

INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('ANIL','CALCUTTA');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('SUNIL','DELHI');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('MEHUL','BARODA');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('MANDAR','PATNA');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('MADHURI','NAGPUR');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('PRAMOD','NAGPUR');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('SANDIP','SURAT');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('SHIVANI','BOMBAY');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('KRANTI','BOMBAY');
INSERT INTO CUSTOMERS (CNAME,CITY) VALUES ('NAREN','BOMBAY');
SELECT * FROM CUSTOMERS

INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (201,'ANIL','VRCE',1000.00);
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (206,'MEHUL','AJNI',5000.00);
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (311,'SUNIL','DHARAMPETH',3000.00);
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (321,'MADHURI','ANDHERI',2000.00);
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (375,'PRAMOD','VIRAR',8000.00);
INSERT INTO BORROW (LOANNO,CNAME,BNAME,AMOUNT) VALUES (481,'KRANTI','NEHRU PLACE',3000.00);
SELECT * FROM BORROW

---LAB 2 

--PART-A
--1
SELECT * FROM DEPOSIT

--2
SELECT * FROM BORROW

--3
SELECT * FROM CUSTOMERS

--4
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT

--5
SELECT LOANNO,AMOUNT FROM BORROW

--6
SELECT * FROM BORROW WHERE BNAME='ANDHERI'

--7
SELECT ACTNO,AMOUNT FROM DEPOSIT WHERE ACTNO=106

--8
SELECT BNAME FROM BORROW WHERE AMOUNT>5000

--9
SELECT CNAME FROM DEPOSIT WHERE ADATE>'1996-12-01'

--10
SELECT CNAME FROM DEPOSIT WHERE ACTNO<105

--11
SELECT CNAME FROM CUSTOMERS WHERE CITY='NAGPUR' OR CITY='DELHI'

SELECT CNAME FROM CUSTOMERS WHERE CITY IN ('NAGPUR','DELHI')

--12
SELECT BNAME,CNAME FROM DEPOSIT WHERE AMOUNT>4000 AND ACTNO<150

--13
SELECT CNAME FROM BORROW WHERE AMOUNT>=3000 AND AMOUNT<=8000

SELECT CNAME FROM BORROW WHERE AMOUNT BETWEEN 3000 AND 8000

--14
SELECT*FROM DEPOSIT WHERE NOT BNAME='ANDHERI'

--15
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT WHERE (BNAME = 'AJNI' OR BNAME='KAROLBAGH' OR BNAME='M.G.ROAD') AND ACTNO<104

SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT WHERE (BNAME IN ('AJNI','KAROLBAGH','M.G.ROAD')) AND ACTNO<104

--PART-B
--1
SELECT TOP 5 * FROM DEPOSIT

--2
SELECT TOP 3 * FROM DEPOSIT WHERE AMOUNT>1000

--3
SELECT TOP 5 LOANNO,CNAME FROM BORROW WHERE BNAME!='ANDHERI'

--4
SELECT DISTINCT CITY FROM CUSTOMERS

--5
SELECT DISTINCT BNAME FROM BRANCH

--Part C

--1
SELECT TOP 50 PERCENT * FROM BORROW

--2
SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT

--3
SELECT TOP 25 PERCENT * FROM DEPOSIT WHERE AMOUNT>5000

--4
SELECT TOP 10 PERCENT AMOUNT FROM BORROW

--5
SELECT DISTINCT CNAME,CITY FROM CUSTOMERS

--6
SELECT*,AMOUNT+(AMOUNT*0.1) AS 'EXTRA_AMOUNT' FROM BORROW

--7
SELECT * FROM BORROW WHERE LOANNO%2=0

SELECT * FROM BORROW WHERE LOANNO%2=1

