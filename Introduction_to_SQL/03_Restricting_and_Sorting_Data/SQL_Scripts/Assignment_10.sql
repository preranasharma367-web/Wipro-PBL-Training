-- ============================================
-- Assignment 10
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee name and salary for
-- employees earning more than a user-
-- specified salary.
-- ============================================

SELECT ENAME,
       SAL
FROM EMP
WHERE SAL > &SALARY;
