-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 04
-- ==========================================================
-- Objective:
-- Display employee name concatenated with job title using a
-- meaningful column alias.
-- ==========================================================

SELECT ENAME || ', ' || JOB AS "Employee and Title"
FROM EMP;
