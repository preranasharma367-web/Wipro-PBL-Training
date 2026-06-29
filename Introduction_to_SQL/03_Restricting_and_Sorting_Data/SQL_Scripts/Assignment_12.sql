-- ============================================
-- Assignment 12
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee details for a
-- user-specified Manager ID and allow
-- dynamic sorting.
-- ============================================

SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE MGR = &MANAGER_ID
ORDER BY &SORT_COLUMN;
