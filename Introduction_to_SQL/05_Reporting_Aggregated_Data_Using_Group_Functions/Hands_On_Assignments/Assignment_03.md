# Assignment 03 – Display Salary Statistics for Each Job Type

## Objective

Learn how to use the `GROUP BY` clause with aggregate functions to generate summary reports for each job type.

---

## Problem Statement

Modify the previous query to display the following salary details for each job type:

- Minimum Salary
- Maximum Salary
- Total Salary
- Average Salary

Group the results by job type.

---

## SQL Query

```sql
SELECT JOB,
       MIN(SAL) AS Minimum,
       MAX(SAL) AS Maximum,
       SUM(SAL) AS Sum,
       ROUND(AVG(SAL)) AS Average
FROM EMP
GROUP BY JOB;
```

---

## Explanation

- `GROUP BY JOB` groups employees according to their job.
- `MIN(SAL)` returns the lowest salary for each job.
- `MAX(SAL)` returns the highest salary for each job.
- `SUM(SAL)` calculates the total salary for each job.
- `ROUND(AVG(SAL))` calculates and rounds the average salary for each job.

---

## Oracle Clauses and Functions Used

### GROUP BY

Groups rows having the same value in a column.

### MIN()

Returns the minimum salary.

### MAX()

Returns the maximum salary.

### SUM()

Calculates the total salary.

### AVG()

Calculates the average salary.

### ROUND()

Rounds the average salary to the nearest whole number.

---

## Expected Output

| JOB | MINIMUM | MAXIMUM | SUM | AVERAGE |
|------------|--------:|--------:|------:|--------:|
| ANALYST | 3000 | 3000 | 6000 | 3000 |
| CLERK | 800 | 1300 | 4150 | 1038 |
| MANAGER | 2450 | 2975 | 8275 | 2758 |
| PRESIDENT | 5000 | 5000 | 5000 | 5000 |
| SALESMAN | 1250 | 1600 | 5600 | 1400 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT JOB,
  2         MIN(SAL) AS Minimum,
  3         MAX(SAL) AS Maximum,
  4         SUM(SAL) AS Sum,
  5         ROUND(AVG(SAL)) AS Average
  6  FROM EMP
  7  GROUP BY JOB;

JOB         MINIMUM MAXIMUM   SUM  AVERAGE
---------- -------- ------- ------ --------
ANALYST       3000    3000   6000     3000
CLERK          800    1300   4150     1038
MANAGER       2450    2975   8275     2758
PRESIDENT     5000    5000   5000     5000
SALESMAN      1250    1600   5600     1400
```

---

## Concepts Used

- GROUP BY
- Aggregate Functions
- MIN()
- MAX()
- SUM()
- AVG()
- ROUND()

---

## Learning Outcome

Learned how to use the `GROUP BY` clause with aggregate functions to generate summarized salary reports for each job category.
