-- Topic 04 : Using Single-Row Functions
-- Assignment 12
-- Display employee names and salary histogram

SELECT RPAD(SUBSTR(ENAME,1,8),10,' ') ||
       RPAD('*', ROUND(SAL/1000), '*') AS EMPLOYEES_AND_THEIR_SALARIES
FROM EMP
ORDER BY SAL DESC;
