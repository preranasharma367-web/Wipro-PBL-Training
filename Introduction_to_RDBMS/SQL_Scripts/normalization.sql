-- ==========================================
-- Wipro PBL Training
-- Module: Introduction to RDBMS
-- Topic: Normalization
-- ==========================================

-- ===============================
-- Question 1 : First Normal Form
-- ===============================

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
