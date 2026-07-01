-- Topic 04 : Using Single-Row Functions
-- Assignment 03
-- Calculate the salary increase

SELECT EMPNO,
       ENAME,
       SAL,
       ROUND(SAL * 1.155) AS "New Salary",
       ROUND(SAL * 1.155) - SAL AS "Increase"
FROM EMP;
