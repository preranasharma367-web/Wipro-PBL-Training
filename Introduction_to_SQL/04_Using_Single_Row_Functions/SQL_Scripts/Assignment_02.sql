-- Topic 04 : Using Single-Row Functions
-- Assignment 02
-- Display revised salary after a 15.5% increment

SELECT EMPNO,
       ENAME,
       SAL,
       ROUND(SAL * 1.155) AS "New Salary"
FROM EMP;
