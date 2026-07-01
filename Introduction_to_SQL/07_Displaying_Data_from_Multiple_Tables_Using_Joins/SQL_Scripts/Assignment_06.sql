-- Topic 07 : Displaying Data from Multiple Tables Using Joins
-- Assignment 06
-- Display employee salary grades using Non-Equi Join

SELECT E.ENAME,
       E.JOB,
       D.DNAME,
       E.SAL,
       S.GRADE
FROM EMP E,
     DEPT D,
     SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
  AND E.SAL BETWEEN S.LOSAL AND S.HISAL;
