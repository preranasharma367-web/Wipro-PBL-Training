-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 01
-- Display employee and department details using NATURAL JOIN

SELECT EMPNO,
       ENAME,
       SAL,
       DNAME,
       LOC
FROM EMP
NATURAL JOIN DEPT;
