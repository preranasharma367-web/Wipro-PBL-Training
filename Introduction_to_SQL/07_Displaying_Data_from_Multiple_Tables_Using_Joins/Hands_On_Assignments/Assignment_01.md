# Assignment 01 – Display Employee and Department Details Using NATURAL JOIN

## Objective

Learn how to retrieve related data from multiple tables using the Oracle `NATURAL JOIN`.

---

## Problem Statement

Write a query to display the following information by joining the `EMP` and `DEPT` tables:

- Employee Number (EMPNO)
- Employee Name (ENAME)
- Salary (SAL)
- Department Name (DNAME)
- Department Location (LOC)

Use a **NATURAL JOIN** to produce the results.

---

## SQL Query

```sql
SELECT EMPNO,
       ENAME,
       SAL,
       DNAME,
       LOC
FROM EMP
NATURAL JOIN DEPT;
```

---

## Explanation

The `NATURAL JOIN` automatically joins the two tables based on columns with the same name.

In the SCOTT schema:

- `EMP.DEPTNO`
- `DEPT.DEPTNO`

Since both tables contain the column `DEPTNO`, Oracle automatically joins them.

---

## Oracle Clause Used

### NATURAL JOIN

Automatically joins two tables based on all columns having the same name and compatible data types.

**Syntax**

```sql
SELECT columns
FROM table1
NATURAL JOIN table2;
```

---

## Expected Output

| EMPNO | ENAME | SAL | DNAME | LOC |
|------:|-------|----:|--------|---------|
| 7369 | SMITH | 800 | RESEARCH | DALLAS |
| 7499 | ALLEN | 1600 | SALES | CHICAGO |
| 7521 | WARD | 1250 | SALES | CHICAGO |
| 7566 | JONES | 2975 | RESEARCH | DALLAS |
| ... | ... | ... | ... | ... |

> **Note:** Output is based on the standard Oracle SCOTT.EMP and DEPT tables.

---

## SQL*Plus Output

```text
SQL> SELECT EMPNO,
  2         ENAME,
  3         SAL,
  4         DNAME,
  5         LOC
  6  FROM EMP
  7  NATURAL JOIN DEPT;

EMPNO ENAME  SAL  DNAME       LOC
----- ------ ---- ---------- --------
7369  SMITH   800 RESEARCH   DALLAS
7499  ALLEN  1600 SALES      CHICAGO
7521  WARD   1250 SALES      CHICAGO
7566  JONES  2975 RESEARCH   DALLAS
...
```

---

## Concepts Used

- NATURAL JOIN
- Multiple Tables
- Oracle SCOTT Schema

---

## Learning Outcome

Learned how to retrieve related data from multiple tables using the Oracle `NATURAL JOIN`, which automatically joins tables based on common column names.
