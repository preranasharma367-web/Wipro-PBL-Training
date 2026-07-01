-- Topic 04 : Using Single-Row Functions
-- Assignment 10
-- Display employee hire day

SELECT ENAME,
       HIREDATE,
       TO_CHAR(HIREDATE,'Day') AS DAY
FROM EMP
ORDER BY NEXT_DAY(HIREDATE - 7, 'MONDAY');
