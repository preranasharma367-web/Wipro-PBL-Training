-- Topic 05 : Reporting Aggregated Data Using Group Functions
-- Assignment 08
-- Display department-wise total salary

SELECT DEPTNO,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 9000
ORDER BY TOTAL_SALARY DESC;
