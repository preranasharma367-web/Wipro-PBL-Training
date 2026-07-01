-- Topic 04 : Using Single-Row Functions
-- Assignment 07
-- Display Dream Salaries

SELECT ENAME || ' earns ' || SAL ||
       ' monthly but wants ' || (SAL * 3) AS "Dream Salaries"
FROM EMP;
