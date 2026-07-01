# Assignment 01 – Create a Matrix Report of Salary by Department

## Objective

Learn how to create a matrix (pivot-style) report using Oracle SQL aggregate functions, the `DECODE()` function, and the `GROUP BY` clause.

---

## Problem Statement

Create a matrix query to display:

- Job
- Salary for employees in Department 10
- Salary for employees in Department 20
- Salary for employees in Department 30
- Total salary for each job

Give each column an appropriate heading.

---

## SQL Query

```sql
SELECT JOB,
       SUM(DECODE(DEPTNO,10,SAL)) AS DEPT10,
       SUM(DECODE(DEPTNO,20,SAL)) AS DEPT20,
       SUM(DECODE(DEPTNO,30,SAL)) AS DEPT30,
       SUM(SAL) AS TOTAL
FROM EMP
GROUP BY JOB;
```

---

## Explanation

- `DECODE(DEPTNO,10,SAL)` returns the salary only if the department is 10.
- Similar logic is applied for departments 20 and 30.
- `SUM()` totals the salaries for each department.
- `GROUP BY JOB` groups employees according to their job title.
- `SUM(SAL)` calculates the total salary for each job.

---

## Oracle Functions and Clauses Used

### DECODE()

Returns a value based on a matching condition.

### SUM()

Calculates the total salary.

### GROUP BY

Groups rows by job.

---

## Expected Output

| JOB | DEPT10 | DEPT20 | DEPT30 | TOTAL |
|------------|-------:|-------:|-------:|------:|
| ANALYST | | 6000 | | 6000 |
| CLERK | 1300 | 1900 | 950 | 4150 |
| MANAGER | 2450 | 2975 | 2850 | 8275 |
| PRESIDENT | 5000 | | | 5000 |
| SALESMAN | | | 5600 | 5600 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT JOB,
  2         SUM(DECODE(DEPTNO,10,SAL)) AS DEPT10,
  3         SUM(DECODE(DEPTNO,20,SAL)) AS DEPT20,
  4         SUM(DECODE(DEPTNO,30,SAL)) AS DEPT30,
  5         SUM(SAL) AS TOTAL
  6  FROM EMP
  7  GROUP BY JOB;

JOB         DEPT10 DEPT20 DEPT30 TOTAL
---------- ------- ------- ------- -----
ANALYST              6000          6000
CLERK       1300    1900     950   4150
MANAGER     2450    2975    2850   8275
PRESIDENT   5000                   5000
SALESMAN                    5600   5600
```

---

## Concepts Used

- DECODE()
- SUM()
- GROUP BY
- Matrix Report
- Aggregate Functions

---

## Learning Outcome

Learned how to generate a matrix (pivot-style) report using Oracle SQL aggregate functions together with the `DECODE()` function.
