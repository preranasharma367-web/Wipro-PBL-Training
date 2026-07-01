-- Topic 04 : Using Single-Row Functions
-- Assignment 08
-- Format employee salary using LPAD

SELECT ENAME,
       LPAD(SAL, 15, '$') AS SALARY
FROM EMP;
