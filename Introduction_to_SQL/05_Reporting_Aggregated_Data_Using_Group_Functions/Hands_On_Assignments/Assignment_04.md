# Assignment 04 – Display Number of Employees for Each Job

## Objective

Learn how to use the COUNT() function with the GROUP BY clause to count employees in each job category.

---

## Problem Statement

Write a query to display the number of employees having the same job.

---

## SQL Query

```sql
SELECT JOB,
       COUNT(*) AS TOTAL_EMPLOYEES
FROM EMP
GROUP BY JOB;
```

---

## Explanation

- `COUNT(*)` counts the number of employees.
- `GROUP BY JOB` groups employees according to their job title.
- One row is returned for each unique job.

---

## Oracle Functions Used

### COUNT()

Counts the number of rows in each group.

### GROUP BY

Groups rows having the same value in the specified column.

---

## Expected Output

| JOB | TOTAL_EMPLOYEES |
|------------|----------------:|
| ANALYST | 2 |
| CLERK | 4 |
| MANAGER | 3 |
| PRESIDENT | 1 |
| SALESMAN | 4 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT JOB,
  2         COUNT(*) AS TOTAL_EMPLOYEES
  3  FROM EMP
  4  GROUP BY JOB;

JOB         TOTAL_EMPLOYEES
---------- ----------------
ANALYST                  2
CLERK                    4
MANAGER                  3
PRESIDENT                1
SALESMAN                 4
```

---

## Concepts Used

- COUNT()
- GROUP BY
- Aggregate Functions

---

## Learning Outcome

Learned how to count records for each group using the COUNT() function together with the GROUP BY clause.
