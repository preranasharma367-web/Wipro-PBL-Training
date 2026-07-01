-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 11
-- Display employees earning above their department average

SELECT E.ENAME,
       D.DNAME,
       E.SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL >
      (SELECT AVG(E2.SAL)
       FROM EMP E2
       WHERE E2.DEPTNO = E.DEPTNO);
