# Assignment 12 – Display Employee and Department Names Using RIGHT OUTER JOIN

## Objective

Learn how to use the ANSI SQL `RIGHT OUTER JOIN` to retrieve all records from the right table.

---

## Problem Statement

Display the following details:

- Employee Name (ENAME)
- Department Name (DNAME)

Use a **RIGHT OUTER JOIN** between the `EMP` and `DEPT` tables.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DNAME
FROM EMP E
RIGHT OUTER JOIN DEPT D
ON E.DEPTNO = D.DEPTNO;
```

---

## Explanation

- `DEPT` is the right table.
- `RIGHT OUTER JOIN` returns all departments.
- If a department has no employees, the employee name is displayed as `NULL`.

---

## Oracle Join Used

### RIGHT OUTER JOIN

Returns all rows from the right table and the matching rows from the left table.

**Syntax**

```sql
SELECT columns
FROM table1
RIGHT OUTER JOIN table2
ON table1.column = table2.column;
```

---

## Expected Output

| ENAME | DNAME |
|--------|------------|
| CLARK | ACCOUNTING |
| KING | ACCOUNTING |
| MILLER | ACCOUNTING |
| SMITH | RESEARCH |
| JONES | RESEARCH |
| ... | ... |
| NULL | OPERATIONS |

> **Note:** Department `OPERATIONS` appears even if it has no employees.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         D.DNAME
  3  FROM EMP E
  4  RIGHT OUTER JOIN DEPT D
  5  ON E.DEPTNO = D.DEPTNO;

ENAME      DNAME
---------- ----------
CLARK      ACCOUNTING
KING       ACCOUNTING
MILLER     ACCOUNTING
SMITH      RESEARCH
JONES      RESEARCH
...
           OPERATIONS
```

---

## Concepts Used

- RIGHT OUTER JOIN
- ANSI JOIN
- ON Clause

---

## Learning Outcome

Learned how to use `RIGHT OUTER JOIN` to display all rows from the right table, including departments that have no employees.
