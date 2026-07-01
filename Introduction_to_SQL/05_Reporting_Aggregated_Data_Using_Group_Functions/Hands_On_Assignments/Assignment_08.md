# Assignment 08 – Display Department-wise Total Salary

## Objective

Learn how to use aggregate functions with the `GROUP BY`, `HAVING`, and `ORDER BY` clauses to generate department-wise salary reports.

---

## Problem Statement

Write a query to display:

- Department Number
- Total Salary paid in each department

Requirements:

- Exclude departments whose total salary is **9000 or less**.
- Display the results in **descending order** of total salary.

---

## SQL Query

```sql
SELECT DEPTNO,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) > 9000
ORDER BY TOTAL_SALARY DESC;
```

---

## Explanation

- `SUM(SAL)` calculates the total salary for each department.
- `GROUP BY DEPTNO` groups employees according to department.
- `HAVING SUM(SAL) > 9000` excludes departments whose total salary is 9000 or less.
- `ORDER BY TOTAL_SALARY DESC` sorts the output from highest to lowest total salary.

---

## Oracle Functions and Clauses Used

### SUM()

Calculates the total salary for each department.

### GROUP BY

Groups employees according to their department.

### HAVING

Filters grouped records based on aggregate values.

### ORDER BY

Sorts the final result in descending order.

---

## Expected Output

| DEPTNO | TOTAL_SALARY |
|-------:|-------------:|
| 20 | 10875 |
| 30 | 9400 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT DEPTNO,
  2         SUM(SAL) AS TOTAL_SALARY
  3  FROM EMP
  4  GROUP BY DEPTNO
  5  HAVING SUM(SAL) > 9000
  6  ORDER BY TOTAL_SALARY DESC;

DEPTNO  TOTAL_SALARY
------  ------------
20            10875
30             9400
```

---

## Concepts Used

- SUM()
- GROUP BY
- HAVING
- ORDER BY
- Aggregate Functions

---

## Learning Outcome

Learned how to generate department-wise salary reports using aggregate functions and filter grouped data with the `HAVING` clause.
