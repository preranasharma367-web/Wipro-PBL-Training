-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 06
-- ==========================================================
-- Objective:
-- Display employee name, job, and hire date for SCOTT and
-- TURNER ordered by hire date.
-- ==========================================================

SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE ENAME IN ('SCOTT', 'TURNER')
ORDER BY HIREDATE ASC;
