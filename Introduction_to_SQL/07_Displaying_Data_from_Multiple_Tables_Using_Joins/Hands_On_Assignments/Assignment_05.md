# Assignment 05 – Display Employee and Manager Details Using Outer Join

## Objective

Learn how to use an Oracle Outer Join to display all employees, including those who do not have a manager.

---

## Problem Statement

Create a report to display:

- Employee Name
- Employee Number
- Manager Name
- Manager Number

Include employees who do not have a manager.

Label the columns as:

- Employee
- Emp#
- Manager
- Mgr#

---

## SQL Query

```sql
SELECT E.ENAME AS "Employee",
       E.EMPNO AS "Emp#",
       M.ENAME AS "Manager",
       M.EMPNO AS "Mgr#"
FROM EMP E, EMP M
WHERE E.MGR = M.EMPNO(+);
```

---

## Explanation

- The `EMP` table is referenced twice:
  - `E` represents the employee.
  - `M` represents the manager.
- `(+)` is Oracle's legacy outer join operator.
- It ensures all employees are displayed, even if they do not have a manager (for example, **KING**).

---

## Oracle Join Used

### Outer Join

An Outer Join returns all matching rows along with rows that have no matching value in the joined table.

**Oracle Syntax**

```sql
WHERE E.MGR = M.EMPNO(+)
```

---

## Expected Output

| Employee | Emp# | Manager | Mgr# |
|-----------|-----:|----------|-----:|
| SMITH | 7369 | FORD | 7902 |
| ALLEN | 7499 | BLAKE | 7698 |
| WARD | 7521 | BLAKE | 7698 |
| JONES | 7566 | KING | 7839 |
| KING | 7839 | NULL | NULL |
| ... | ... | ... | ... |

> **Note:** Employees without a manager display `NULL` for the manager details.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME AS "Employee",
  2         E.EMPNO AS "Emp#",
  3         M.ENAME AS "Manager",
  4         M.EMPNO AS "Mgr#"
  5  FROM EMP E, EMP M
  6  WHERE E.MGR = M.EMPNO(+);

Employee   Emp#   Manager   Mgr#
---------  -----  --------  ----
SMITH      7369   FORD      7902
ALLEN      7499   BLAKE     7698
WARD       7521   BLAKE     7698
JONES      7566   KING      7839
KING       7839
...
```

---

## Concepts Used

- Outer Join
- Self Join
- Table Aliases
- Oracle `(+)` Operator

---

## Learning Outcome

Learned how to use Oracle's outer join operator to display all employees, including those who do not have a corresponding manager record.
