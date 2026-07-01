-- Topic 06 : Using the Set Operators
-- Assignment 02
-- Department-wise, Job-wise and Total Salary using UNION

SELECT TO_CHAR(DEPTNO) AS CATEGORY,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO

UNION

SELECT JOB,
       SUM(SAL)
FROM EMP
GROUP BY JOB

UNION

SELECT 'TOTAL',
       SUM(SAL)
FROM EMP;
