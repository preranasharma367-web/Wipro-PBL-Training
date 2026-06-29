-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 05
-- ==========================================================
-- Objective:
-- Display employee details as a single formatted output.
-- ==========================================================

SELECT ENAME || ', ' || JOB || ', ' || HIREDATE || ', ' || MGR AS "THE_OUTPUT"
FROM EMP;
