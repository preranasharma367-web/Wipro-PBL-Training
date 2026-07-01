-- Topic 04 : Using Single-Row Functions
-- Assignment 13
-- Display employee grade using DECODE

SELECT ENAME,
       JOB,
       DECODE(JOB,
              'PRESIDENT', 'A',
              'MANAGER', 'B',
              'SALESMAN', 'C',
              'CLERK', 'D',
              'Not Assigned') AS GRADE
FROM EMP;
