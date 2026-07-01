# Assignment 04 – Display Employee and Manager Details Using Self Join

## Objective

Learn how to retrieve related information from the same table using a Self Join.

---

## Problem Statement

Create a report to display the following details:

- Employee Name
- Employee Number
- Manager Name
- Manager Number

Label the columns as:

- Employee
- Emp#
- Manager
- Mgr#

Use a **Self Join** on the EMP table.

---

## SQL Query

```sql
SELECT E.ENAME AS "Employee",
       E.EMPNO AS "Emp#",
       M.ENAME AS "Manager",
       M.EMPNO AS "Mgr#"
FROM EMP E, EMP M
WHERE E.MGR = M.EMPNO;
```

---

## Explanation

The `EMP` table is referenced twice:

- `E` represents the employee.
- `M` represents the manager.

The condition:

```sql
E.MGR = M.EMPNO
```

matches each employee with their manager.

---

## Oracle Join Used

### Self Join

A Self Join joins a table with itself using table aliases.

**Syntax**

```sql
SELECT ...
FROM table A, table B
WHERE A.column = B.column;
```

---

## Expected Output

| Employee | Emp# | Manager | Mgr# |
|-----------|-----:|----------|-----:|
| SMITH | 7369 | FORD | 7902 |
| ALLEN | 7499 | BLAKE | 7698 |
| WARD | 7521 | BLAKE | 7698 |
| JONES | 7566 | KING | 7839 |
| ... | ... | ... | ... |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME AS "Employee",
  2         E.EMPNO AS "Emp#",
  3         M.ENAME AS "Manager",
  4         M.EMPNO AS "Mgr#"
  5  FROM EMP E, EMP M
  6  WHERE E.MGR = M.EMPNO;

Employee   Emp#   Manager   Mgr#
---------  -----  --------  ----
SMITH      7369   FORD      7902
ALLEN      7499   BLAKE     7698
WARD       7521   BLAKE     7698
JONES      7566   KING      7839
...
```

---

## Concepts Used

- Self Join
- Table Aliases
- WHERE Clause
- Column Aliases

---

## Learning Outcome

Learned how to retrieve employee and manager information from the same table using a Self Join.
