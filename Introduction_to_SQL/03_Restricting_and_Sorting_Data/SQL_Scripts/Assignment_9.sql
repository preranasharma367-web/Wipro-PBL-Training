-- ============================================
-- Assignment 9
-- Topic : Restricting and Sorting Data
-- Objective:
-- Display employee name and hire date
-- for employees hired in the year 1981.
-- ============================================

SELECT ENAME,
       HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN '01-JAN-81' AND '31-DEC-81';
