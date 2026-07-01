# Assignment 13 – Display Employee and Department Details Using FULL OUTER JOIN

## Objective

Learn how to use the ANSI SQL `FULL OUTER JOIN` to retrieve all matching and non-matching records from two tables.

---

## Problem Statement

Display the following details:

- Employee Name (ENAME)
- Department Name (DNAME)
- Department Location (LOC)

Requirements:

- Display all employees, including those without a matching department.
- Display all departments, including those without any employees.
- Use a **FULL OUTER JOIN**.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DNAME,
       D.LOC
FROM EMP E
FULL OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
```

---

## Explanation

- `FULL OUTER JOIN` combines the results of both `LEFT OUTER JOIN` and `RIGHT OUTER JOIN`.
- All rows from both the `EMP` and `DEPT` tables are returned.
- If there is no matching record in either table, the corresponding columns contain `NULL`.

---

## Oracle Join Used

### FULL OUTER JOIN

Returns all rows from both tables, whether or not there is a matching row.

**Syntax**

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.column = table2.column;
```

---

## Expected Output

| ENAME | DNAME | LOC |
|--------|------------|-----------|
| SMITH | RESEARCH | DALLAS |
| ALLEN | SALES | CHICAGO |
| KING | ACCOUNTING | NEW YORK |
| ... | ... | ... |
| NULL | OPERATIONS | BOSTON |

> **Note:** Department `OPERATIONS` is displayed even though it has no employees.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         D.DNAME,
  3         D.LOC
  4  FROM EMP E
  5  FULL OUTER JOIN DEPT D
  6  ON E.DEPTNO = D.DEPTNO;

ENAME      DNAME        LOC
---------- ------------ ----------
SMITH      RESEARCH     DALLAS
ALLEN      SALES        CHICAGO
KING       ACCOUNTING   NEW YORK
...
           OPERATIONS   BOSTON
```

---

## Concepts Used

- FULL OUTER JOIN
- ANSI SQL Joins
- ON Clause

---

## Learning Outcome

Learned how to retrieve all matching and non-matching rows from two related tables using the ANSI SQL `FULL OUTER JOIN`.
