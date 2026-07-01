# Assignment 11 – Display Employees Earning Above Their Department Average

## Objective

Learn how to combine joins with subqueries to compare an employee's salary with the average salary of their department.

---

## Problem Statement

Display the following details:

- Employee Name (ENAME)
- Department Name (DNAME)
- Salary (SAL)

Show only those employees whose salary is greater than the average salary of their respective department.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DNAME,
       E.SAL
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE E.SAL >
      (SELECT AVG(E2.SAL)
       FROM EMP E2
       WHERE E2.DEPTNO = E.DEPTNO);
```

---

## Explanation

- `JOIN` combines the `EMP` and `DEPT` tables.
- The correlated subquery calculates the average salary for the employee's department.
- Only employees earning more than their department's average salary are displayed.

---

## Oracle Concepts Used

### JOIN

Combines related rows from two tables.

### Correlated Subquery

Executes once for each row returned by the outer query.

### AVG()

Calculates the average salary.

---

## Expected Output

| ENAME | DNAME | SAL |
|--------|------------|----:|
| JONES | RESEARCH | 2975 |
| SCOTT | RESEARCH | 3000 |
| FORD | RESEARCH | 3000 |
| BLAKE | SALES | 2850 |
| KING | ACCOUNTING | 5000 |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         D.DNAME,
  3         E.SAL
  4  FROM EMP E
  5  JOIN DEPT D
  6  ON E.DEPTNO = D.DEPTNO
  7  WHERE E.SAL >
  8        (SELECT AVG(E2.SAL)
  9         FROM EMP E2
 10         WHERE E2.DEPTNO = E.DEPTNO);

ENAME      DNAME         SAL
---------- ---------- ------
JONES      RESEARCH     2975
SCOTT      RESEARCH     3000
FORD       RESEARCH     3000
BLAKE      SALES        2850
KING       ACCOUNTING   5000
```

---

## Concepts Used

- JOIN
- Correlated Subquery
- AVG()
- WHERE Clause

---

## Learning Outcome

Learned how to use a correlated subquery with a join to compare each employee's salary against the average salary of their department.
