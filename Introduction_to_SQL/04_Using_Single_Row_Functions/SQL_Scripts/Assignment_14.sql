-- Topic 04 : Using Single-Row Functions
-- Assignment 14
-- Display employee grade using CASE

SELECT ENAME,
       JOB,
       CASE
           WHEN JOB = 'PRESIDENT' THEN 'A'
           WHEN JOB = 'MANAGER' THEN 'B'
           WHEN JOB = 'SALESMAN' THEN 'C'
           WHEN JOB = 'CLERK' THEN 'D'
           ELSE 'Not Assigned'
       END AS GRADE
FROM EMP;
