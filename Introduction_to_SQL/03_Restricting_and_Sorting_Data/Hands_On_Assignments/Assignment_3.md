# Assignment 3

## Question

The HR department wants more descriptive column headings for its report on employees. Name the column headings **Emp #**, **Employee**, **Job**, and **Hire Date**, respectively by giving column aliases.

---

## Objective

To learn how to assign meaningful column aliases to improve the readability of query results.

---

## SQL Query

```sql
SELECT EMPNO AS "Emp #",
       ENAME AS "Employee",
       JOB AS "Job",
       HIREDATE AS "Hire Date"
FROM EMP;
