# Assignment 07 – Display Lowest Salary for Each Manager

## Objective

Learn how to combine the `WHERE`, `GROUP BY`, `HAVING`, and `ORDER BY` clauses with aggregate functions to generate filtered summary reports.

---

## Problem Statement

Create a report to display:

- Manager Number
- Lowest salary of the employees working under that manager

Requirements:

- Exclude employees whose manager is not known.
- Exclude groups where the minimum salary is **2000 or less**.
- Display the results in descending order of salary.

---

## SQL Query

```sql
SELECT MGR,
       MIN(SAL) AS LOWEST_SALARY
FROM EMP
WHERE MGR IS NOT NULL
GROUP BY MGR
HAVING MIN(SAL) > 2000
ORDER BY LOWEST_SALARY DESC;
```

---

## Explanation

- `WHERE MGR IS NOT NULL` excludes employees without a manager.
- `GROUP BY MGR` creates one group for each manager.
- `MIN(SAL)` finds the lowest salary in each manager's team.
- `HAVING MIN(SAL) > 2000` removes groups where the minimum salary is 2000 or less.
- `ORDER BY LOWEST_SALARY DESC` sorts the report from highest to lowest salary.

---

## Oracle Clauses and Functions Used

### WHERE

Filters rows before grouping.

### GROUP BY

Groups employees by manager.

### MIN()

Returns the minimum salary in each group.

### HAVING

Filters groups after aggregation.

### ORDER BY

Sorts the final result.

---

## Expected Output

| MGR | LOWEST_SALARY |
|----:|--------------:|
| 7839 | 2450 |
| 7566 | 3000 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT MGR,
  2         MIN(SAL) AS LOWEST_SALARY
  3  FROM EMP
  4  WHERE MGR IS NOT NULL
  5  GROUP BY MGR
  6  HAVING MIN(SAL) > 2000
  7  ORDER BY LOWEST_SALARY DESC;

 MGR  LOWEST_SALARY
---- --------------
7566          3000
7839          2450
```

---

## Concepts Used

- WHERE
- GROUP BY
- HAVING
- ORDER BY
- MIN()
- Aggregate Functions

---

## Learning Outcome

Learned how to generate grouped reports, filter aggregated data using the `HAVING` clause, and sort the final results.
