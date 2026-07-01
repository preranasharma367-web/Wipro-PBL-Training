-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 04
-- Display number of employees for each job

SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY JOB;
