-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 09
-- Display all departments using LEFT OUTER JOIN

SELECT E.ENAME,
       D.DEPTNO,
       D.DNAME,
       D.LOC
FROM DEPT D
LEFT OUTER JOIN EMP E
ON D.DEPTNO = E.DEPTNO;
