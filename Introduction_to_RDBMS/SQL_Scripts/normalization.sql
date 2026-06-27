-- ==========================================
-- Wipro TalentNext PBL
-- Module : Introduction to RDBMS
-- Topic  : Database Normalization
-- ==========================================

-----------------------------------------------------
-- QUESTION 1 : FIRST NORMAL FORM (1NF)
-----------------------------------------------------

CREATE TABLE MEMBER_HOBBIES (
    MEMBER_ID INT,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    HOBBY VARCHAR(50)
);

INSERT INTO MEMBER_HOBBIES VALUES (101,'Jayson','Mark','Cricket');
INSERT INTO MEMBER_HOBBIES VALUES (101,'Jayson','Mark','Swimming');
INSERT INTO MEMBER_HOBBIES VALUES (101,'Jayson','Mark','Football');

INSERT INTO MEMBER_HOBBIES VALUES (102,'Ram','Ganesh','Swimming');
INSERT INTO MEMBER_HOBBIES VALUES (102,'Ram','Ganesh','Running');
INSERT INTO MEMBER_HOBBIES VALUES (102,'Ram','Ganesh','Music');

INSERT INTO MEMBER_HOBBIES VALUES (103,'Raj','Kishore','Dancing');
INSERT INTO MEMBER_HOBBIES VALUES (103,'Raj','Kishore','Singing');
INSERT INTO MEMBER_HOBBIES VALUES (103,'Raj','Kishore','Running');

SELECT * FROM MEMBER_HOBBIES;

-----------------------------------------------------
-- QUESTION 2 : SECOND NORMAL FORM (2NF)
-----------------------------------------------------

CREATE TABLE EMPLOYEE (
    EMPNO INT PRIMARY KEY,
    DEPT VARCHAR(10)
);

CREATE TABLE TRAINING (
    EMPNO INT,
    TRAINING VARCHAR(50),
    TRAINING_DATE DATE
);

INSERT INTO EMPLOYEE VALUES (101,'TT');
INSERT INTO EMPLOYEE VALUES (102,'TT');

INSERT INTO TRAINING VALUES (101,'Oracle SQL',DATE '2015-08-12');
INSERT INTO TRAINING VALUES (101,'Java',DATE '2015-08-21');
INSERT INTO TRAINING VALUES (102,'Oracle SQL',DATE '2014-09-18');

SELECT * FROM EMPLOYEE;
SELECT * FROM TRAINING;

-----------------------------------------------------
-- QUESTION 3 : THIRD NORMAL FORM (3NF)
-----------------------------------------------------

CREATE TABLE SPORTS (
    SPORT_NAME VARCHAR(30) PRIMARY KEY,
    FEES NUMBER
);

CREATE TABLE MEMBERS (
    MEMBER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(30),
    LAST_NAME VARCHAR(30),
    SPORT_NAME VARCHAR(30),
    FOREIGN KEY (SPORT_NAME) REFERENCES SPORTS(SPORT_NAME)
);

INSERT INTO SPORTS VALUES ('Cricket',100);
INSERT INTO SPORTS VALUES ('Hockey',80);
INSERT INTO SPORTS VALUES ('Football',90);

INSERT INTO MEMBERS VALUES (101,'Rajesh','Chand','Cricket');
INSERT INTO MEMBERS VALUES (102,'Jayesh','Raj','Hockey');
INSERT INTO MEMBERS VALUES (103,'Mark','Dorson','Football');

SELECT * FROM SPORTS;
SELECT * FROM MEMBERS;

