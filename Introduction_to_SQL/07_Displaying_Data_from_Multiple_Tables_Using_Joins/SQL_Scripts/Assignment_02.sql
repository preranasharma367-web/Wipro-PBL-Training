-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 02
-- Display SALESMAN details using Equi Join

SELECT E.JOB,
       E.MGR,
       E.SAL,
       E.COMM,
       D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
  AND E.JOB = 'SALESMAN';
