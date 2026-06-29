

```sql
-- ==========================================================
-- Wipro TalentNext PBL
-- Module      : Introduction to SQL
-- Topic       : Restricting and Sorting Data
-- Assignment  : 03
-- ==========================================================
-- Objective:
-- Display employee details using meaningful column aliases.
-- ==========================================================

SELECT EMPNO AS "Emp #",
       ENAME AS "Employee",
       JOB AS "Job",
       HIREDATE AS "Hire Date"
FROM EMP;
