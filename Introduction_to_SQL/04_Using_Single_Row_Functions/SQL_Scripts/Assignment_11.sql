-- Topic 04 : Using Single-Row Functions
-- Assignment 11
-- Display commission amount

SELECT ENAME,
       NVL(TO_CHAR(COMM), 'No Commission') AS COMM
FROM EMP;
