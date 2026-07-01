-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 12
-- Display employee and department names using RIGHT OUTER JOIN

SELECT E.ENAME,
       D.DNAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
