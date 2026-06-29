-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 07
-- ==========================================================
-- Objective:
-- Display employee names and department numbers for employees
-- working in departments 20 and 30, ordered alphabetically.
-- ==========================================================

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30)
ORDER BY ENAME ASC;
