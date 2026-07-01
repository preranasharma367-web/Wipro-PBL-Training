-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 05
-- Display the number of unique managers

SELECT COUNT(DISTINCT MGR) AS "Number of Managers"
FROM EMP;
