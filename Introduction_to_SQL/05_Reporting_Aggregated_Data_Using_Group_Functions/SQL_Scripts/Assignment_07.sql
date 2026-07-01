-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 07
-- Display lowest salary for each manager

SELECT MGR,
       MIN(SAL) AS LOWEST_SALARY
FROM EMP
WHERE MGR IS NOT NULL
GROUP BY MGR
HAVING MIN(SAL) > 2000
ORDER BY LOWEST_SALARY DESC;
