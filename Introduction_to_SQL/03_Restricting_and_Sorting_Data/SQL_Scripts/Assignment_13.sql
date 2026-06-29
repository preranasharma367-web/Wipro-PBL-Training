-- ============================================
-- Assignment 13
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee details for a
-- user-specified manager and allow
-- dynamic sorting.
-- ============================================

SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE MGR = &MGR
ORDER BY &SORT_COLUMN;
