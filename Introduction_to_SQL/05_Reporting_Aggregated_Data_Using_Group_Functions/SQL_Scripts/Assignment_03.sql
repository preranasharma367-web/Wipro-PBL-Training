-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 03
-- Display salary statistics for each job

SELECT JOB,
       MIN(SAL) AS Minimum,
       MAX(SAL) AS Maximum,
       SUM(SAL) AS Sum,
       ROUND(AVG(SAL)) AS Average
FROM EMP
GROUP BY JOB;
