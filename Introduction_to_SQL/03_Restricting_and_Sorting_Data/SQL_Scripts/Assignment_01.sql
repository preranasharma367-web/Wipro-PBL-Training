-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 01
-- ==========================================================
-- Objective:
-- Display employee name, salary, and commission for employees
-- who earn commission. Sort the result by Salary and Commission
-- in descending order.
-- ==========================================================

SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
