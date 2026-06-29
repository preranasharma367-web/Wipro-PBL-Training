-- ==========================================
-- Topic 03 : Restricting and Sorting Data
-- Assignment 1
-- ==========================================

SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
