-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 08
-- Display employees working in DALLAS using the ON clause

SELECT E.ENAME,
       D.DNAME,
       D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.LOC = 'DALLAS';
