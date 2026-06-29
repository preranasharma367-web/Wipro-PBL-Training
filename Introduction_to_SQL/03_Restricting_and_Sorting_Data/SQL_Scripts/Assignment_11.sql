-- ============================================
-- Assignment 11
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee name and job title
-- for employees who do not have a manager.
-- ============================================

SELECT ENAME,
       JOB
FROM EMP
WHERE MGR IS NULL;
