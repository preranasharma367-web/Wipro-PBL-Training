-- Topic 04 : Using Single-Row Functions
-- Assignment 06
-- Calculate employee service duration

SELECT ENAME,
       ROUND(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTHS_WORKED
FROM EMP
ORDER BY MONTHS_WORKED;
