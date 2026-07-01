-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 07
-- Display employee and department details using USING clause

SELECT ENAME,
       DEPTNO,
       DNAME,
       LOC
FROM EMP
JOIN DEPT
USING (DEPTNO);
