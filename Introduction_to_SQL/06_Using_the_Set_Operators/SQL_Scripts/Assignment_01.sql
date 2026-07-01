-- Topic 06 : Using the Set Operators
-- Assignment 01
-- Matrix report of salary by department

SELECT JOB,
       SUM(DECODE(DEPTNO,10,SAL)) AS DEPT10,
       SUM(DECODE(DEPTNO,20,SAL)) AS DEPT20,
       SUM(DECODE(DEPTNO,30,SAL)) AS DEPT30,
       SUM(SAL) AS TOTAL
FROM EMP
GROUP BY JOB;
