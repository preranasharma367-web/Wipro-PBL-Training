-- Topic 04 : Using Single-Row Functions
-- Assignment 04
-- Display employee names in proper case and their lengths

SELECT INITCAP(ENAME) AS "Employee Name",
       LENGTH(ENAME) AS "Name Length"
FROM EMP
WHERE ENAME LIKE 'J%'
   OR ENAME LIKE 'A%'
   OR ENAME LIKE 'M%'
ORDER BY ENAME;
