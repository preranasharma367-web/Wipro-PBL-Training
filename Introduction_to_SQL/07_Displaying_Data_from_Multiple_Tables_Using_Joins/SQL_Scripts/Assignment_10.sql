-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 10
-- Display all employees and all departments using FULL OUTER JOIN

SELECT E.ENAME,
       D.DEPTNO,
       D.DNAME,
       D.LOC
FROM EMP E
FULL OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
