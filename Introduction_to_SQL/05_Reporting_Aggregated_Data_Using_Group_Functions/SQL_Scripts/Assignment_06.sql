-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 06
-- Display the difference between highest and lowest salary

SELECT MAX(SAL) - MIN(SAL) AS DIFFERENCE
FROM EMP;
