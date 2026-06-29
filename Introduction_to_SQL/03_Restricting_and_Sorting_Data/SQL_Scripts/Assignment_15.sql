-- ============================================
-- Assignment 15
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee names containing
-- both A and S.
-- ============================================

SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%'
AND ENAME LIKE '%S%';
