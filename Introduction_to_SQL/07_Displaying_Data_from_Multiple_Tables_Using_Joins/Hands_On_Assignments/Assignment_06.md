# Assignment 06 – Display Employee Salary Grade Using Non-Equi Join

## Objective

Learn how to retrieve data from multiple tables using a Non-Equi Join.

---

## Problem Statement

The HR department wants to determine the salary grade of each employee.

Display the following details:

- Employee Name
- Job
- Department Name
- Salary
- Salary Grade

Use the `EMP`, `DEPT`, and `SALGRADE` tables.

---

## SQL Query

```sql
SELECT E.ENAME,
       E.JOB,
       D.DNAME,
       E.SAL,
       S.GRADE
FROM EMP E,
     DEPT D,
     SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
  AND E.SAL BETWEEN S.LOSAL AND S.HISAL;
```

---

## Explanation

- `EMP` and `DEPT` are joined using the `DEPTNO` column.
- `SALGRADE` is joined using a salary range.
- `BETWEEN S.LOSAL AND S.HISAL` determines the grade corresponding to each employee's salary.

---

## Oracle Join Used

### Non-Equi Join

A Non-Equi Join matches rows based on a range of values rather than equality.

**Syntax**

```sql
WHERE column BETWEEN low_value AND high_value
```

---

## Expected Output

| ENAME | JOB | DNAME | SAL | GRADE |
|--------|------------|------------|----:|------:|
| SMITH | CLERK | RESEARCH | 800 | 1 |
| ALLEN | SALESMAN | SALES | 1600 | 3 |
| WARD | SALESMAN | SALES | 1250 | 2 |
| JONES | MANAGER | RESEARCH | 2975 | 4 |
| KING | PRESIDENT | ACCOUNTING | 5000 | 5 |
| ... | ... | ... | ... | ... |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         E.JOB,
  3         D.DNAME,
  4         E.SAL,
  5         S.GRADE
  6  FROM EMP E,
  7       DEPT D,
  8       SALGRADE S
  9  WHERE E.DEPTNO = D.DEPTNO
 10    AND E.SAL BETWEEN S.LOSAL AND S.HISAL;

ENAME      JOB        DNAME        SAL GRADE
---------- ---------- ---------- ----- -----
SMITH      CLERK      RESEARCH     800     1
ALLEN      SALESMAN   SALES       1600     3
WARD       SALESMAN   SALES       1250     2
JONES      MANAGER    RESEARCH    2975     4
KING       PRESIDENT  ACCOUNTING  5000     5
...
```

---

## Concepts Used

- Non-Equi Join
- BETWEEN Operator
- Multiple Table Join
- Table Aliases

---

## Learning Outcome

Learned how to retrieve related information using a Non-Equi Join by matching values within a range.
