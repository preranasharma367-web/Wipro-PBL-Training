# Assignment 09 – Display All Departments Using LEFT OUTER JOIN

## Objective

Learn how to use the ANSI SQL `LEFT OUTER JOIN` to retrieve all records from the left table, even when there is no matching record in the right table.

---

## Problem Statement

Create a report to display:

- Employee Name (ENAME)
- Department Number (DEPTNO)
- Department Name (DNAME)
- Department Location (LOC)

Display **all departments**, including those that do not have any employees.

Use the **LEFT OUTER JOIN**.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DEPTNO,
       D.DNAME,
       D.LOC
FROM DEPT D
LEFT OUTER JOIN EMP E
ON D.DEPTNO = E.DEPTNO;
```

---

## Explanation

- `DEPT` is the left table.
- `EMP` is the right table.
- `LEFT OUTER JOIN` returns all departments.
- If a department has no employees, employee columns display `NULL`.

---

## Oracle Join Used

### LEFT OUTER JOIN

Returns all rows from the left table and matching rows from the right table.

**Syntax**

```sql
SELECT columns
FROM table1
LEFT OUTER JOIN table2
ON table1.column = table2.column;
```

---

## Expected Output

| ENAME | DEPTNO | DNAME | LOC |
|--------|-------:|------------|-----------|
| CLARK | 10 | ACCOUNTING | NEW YORK |
| KING | 10 | ACCOUNTING | NEW YORK |
| MILLER | 10 | ACCOUNTING | NEW YORK |
| SMITH | 20 | RESEARCH | DALLAS |
| ... | ... | ... | ... |
| NULL | 40 | OPERATIONS | BOSTON |

> **Note:** Department 40 appears even though it has no employees.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         D.DEPTNO,
  3         D.DNAME,
  4         D.LOC
  5  FROM DEPT D
  6  LEFT OUTER JOIN EMP E
  7  ON D.DEPTNO = E.DEPTNO;

ENAME      DEPTNO DNAME       LOC
---------- ------ ---------- ----------
CLARK          10 ACCOUNTING  NEW YORK
KING           10 ACCOUNTING  NEW YORK
MILLER         10 ACCOUNTING  NEW YORK
...
               40 OPERATIONS  BOSTON
```

---

## Concepts Used

- LEFT OUTER JOIN
- ON Clause
- ANSI SQL Joins

---

## Learning Outcome

Learned how to use `LEFT OUTER JOIN` to display all records from the left table, including rows without matching records in the right table.
