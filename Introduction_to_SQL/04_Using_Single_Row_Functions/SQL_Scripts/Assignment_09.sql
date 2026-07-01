-- Topic 04 : Using Single-Row Functions
-- Assignment 09
-- Display employee salary review date

SELECT ENAME,
       HIREDATE,
       TO_CHAR(
           NEXT_DAY(ADD_MONTHS(HIREDATE, 6), 'MONDAY'),
           'fmDay, "the" DDth "of" Month, YYYY'
       ) AS REVIEW
FROM EMP;
