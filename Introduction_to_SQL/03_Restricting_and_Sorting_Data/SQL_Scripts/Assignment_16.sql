-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 16
-- ==========================================================
-- Objective:
-- Display employee name, job, and salary for
-- employees who are CLERKs and whose salary
-- is either 800, 950, or 1300.
-- ==========================================================

SELECT ENAME,
       JOB,
       SAL
FROM EMP
WHERE JOB = 'CLERK'
  AND SAL IN (800, 950, 1300);
