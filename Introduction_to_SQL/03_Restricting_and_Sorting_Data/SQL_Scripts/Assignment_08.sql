-- ============================================
-- Assignment 8
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee name and salary for
-- employees earning between 2000 and 3000
-- and working in department 20 or 30.
-- ============================================

SELECT ENAME AS "Employee",
       SAL AS "Monthly Salary"
FROM EMP
WHERE SAL BETWEEN 2000 AND 3000
  AND DEPTNO IN (20,30);
