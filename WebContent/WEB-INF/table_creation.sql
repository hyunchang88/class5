CREATE TABLE job(
   jobNo NUMBER(7) CONSTRAINT job_jobNo_pk PRIMARY KEY,
   jobName VARCHAR2(50) NOT NULL,
   jobDesc VARCHAR2(300)
)
CREATE SEQUENCE jobNo_SEQ

CREATE TABLE company(
   companyNo NUMBER(7) CONSTRAINT company_companyNo_pk PRIMARY KEY,
   companyName VARCHAR2(50) NOT NULL,
   companyCeoName VARCHAR2(50) NOT NULL,
   companyCeoPhone VARCHAR2(20) NOT NULL,
   jobArea VARCHAR2(20) NOT NULL,
   jobNo NUMBER(7) CONSTRAINT company_jobNo_fk REFERENCES job(jobNo)
)
CREATE SEQUENCE companyNo_SEQ

CREATE TABLE member(
   memberId VARCHAR2(50) CONSTRAINT member_memberId_pk PRIMARY KEY,
   memberPwd VARCHAR2(50) NOT NULL,
   memberName VARCHAR2(50) NOT NULL,
   companyNo NUMBER(7) CONSTRAINT member_companyNo_fk REFERENCES company(companyNo),
   memberLevel CHAR(1) NOT NULL,
   memberEmail VARCHAR2(50) NOT NULL,
   memberPhone VARCHAR2(20) NOT NULL,
   jobArea VARCHAR2(20) NOT NULL
)

CREATE TABLE orderRequest(
   orderNo NUMBER(7) CONSTRAINT orderRequest_orderNo_pk PRIMARY KEY,
   memberId VARCHAR2(50) CONSTRAINT orderRequest_memberId_fk REFERENCES member(memberId),
   jobNo NUMBER(7) CONSTRAINT orderRequest_jobNo_fk REFERENCES job(jobNo),
   companyNo NUMBER(7) CONSTRAINT orderRequest_companyNo_fk REFERENCES company(companyNo),
   orderTitle VARCHAR2(50) NOT NULL,
   orderPrice NUMBER(9) default 0,
   orderComm NUMBER(9) default 0,
   orderStatus CHAR(1) NOT NULL,
   orderResult CHAR(1),
   startDate DATE NOT NULL,
   enddate DATE
)
CREATE SEQUENCE orderNo_SEQ

CREATE TABLE board(
   boardNo NUMBER(7) CONSTRAINT board_boardNo_pk PRIMARY KEY,
   memberId VARCHAR2(50) CONSTRAINT board_memberId_fk REFERENCES member(memberId),
   boardTitle VARCHAR2(50) NOT NULL,
   boardContent VARCHAR2(300) NOT NULL,
   regDate DATE,
   readCount NUMBER(5),
   boardType CHAR(1) NOT NULL,
   filePath VARCHAR2(100),
   PhotoPath VARCHAR2(100)
)
CREATE SEQUENCE boardNo_SEQ;