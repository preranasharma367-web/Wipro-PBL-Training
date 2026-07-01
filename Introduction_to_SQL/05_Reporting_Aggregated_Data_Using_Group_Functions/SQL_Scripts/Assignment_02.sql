-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 02
-- Display rounded salary statistics

SELECT ROUND(MAX(SAL)) AS Maximum,
       ROUND(MIN(SAL)) AS Minimum,
       ROUND(SUM(SAL)) AS Sum,
       ROUND(AVG(SAL)) AS Average
FROM EMP;
