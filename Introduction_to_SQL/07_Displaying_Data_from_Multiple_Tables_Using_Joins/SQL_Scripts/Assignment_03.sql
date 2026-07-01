-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 03
-- Display employees working in DALLAS

SELECT E.ENAME,
       E.JOB,
       E.DEPTNO,
       D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
  AND D.LOC = 'DALLAS';
