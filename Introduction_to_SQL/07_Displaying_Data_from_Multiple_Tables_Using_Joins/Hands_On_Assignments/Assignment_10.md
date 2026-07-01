# Assignment 10 – Display All Employees and All Departments Using FULL OUTER JOIN

## Objective

Learn how to use the ANSI SQL `FULL OUTER JOIN` to retrieve all rows from both joined tables.

---

## Problem Statement

Create a report to display:

- Employee Name (ENAME)
- Department Number (DEPTNO)
- Department Name (DNAME)
- Department Location (LOC)

Requirements:

- Display all employees, even if they are not assigned to a department.
- Display all departments, even if they have no employees.
- Use the **FULL OUTER JOIN**.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DEPTNO,
       D.DNAME,
       D.LOC
FROM EMP E
FULL OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
```

---

## Explanation

- `FULL OUTER JOIN` returns all matching rows from both tables.
- Employees without matching departments are included.
- Departments without employees are also included.
- Matching records are combined into a single row.

---

## Oracle Join Used

### FULL OUTER JOIN

Returns all rows from both tables, matching rows where possible.

**Syntax**

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2
ON table1.column = table2.column;
```

---

## Expected Output

| ENAME | DEPTNO | DNAME | LOC |
|--------|-------:|------------|-----------|
| SMITH | 20 | RESEARCH | DALLAS |
| ALLEN | 30 | SALES | CHICAGO |
| KING | 10 | ACCOUNTING | NEW YORK |
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
  5  FROM EMP E
  6  FULL OUTER JOIN DEPT D
  7  ON E.DEPTNO = D.DEPTNO;

ENAME      DEPTNO DNAME       LOC
---------- ------ ---------- ----------
SMITH          20 RESEARCH    DALLAS
ALLEN          30 SALES       CHICAGO
KING           10 ACCOUNTING  NEW YORK
...
               40 OPERATIONS  BOSTON
```

---

## Concepts Used

- FULL OUTER JOIN
- ON Clause
- ANSI SQL Joins

---

## Learning Outcome

Learned how to use `FULL OUTER JOIN` to retrieve all records from both tables, including unmatched rows.
