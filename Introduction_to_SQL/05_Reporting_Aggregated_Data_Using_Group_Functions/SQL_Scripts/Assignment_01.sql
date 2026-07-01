-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 01
-- Display highest, lowest, total and average salary

SELECT MAX(SAL) AS Maximum,
       MIN(SAL) AS Minimum,
       SUM(SAL) AS Sum,
       AVG(SAL) AS Average
FROM EMP;
