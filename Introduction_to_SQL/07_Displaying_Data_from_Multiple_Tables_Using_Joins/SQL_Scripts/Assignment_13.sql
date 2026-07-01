-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 13
-- Display employee and department details using FULL OUTER JOIN

SELECT E.ENAME,
       D.DNAME,
       D.LOC
FROM EMP E
FULL OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
