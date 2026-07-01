# Assignment 05 – Display the Number of Managers

## Objective

Learn how to count unique values using the `COUNT()` and `DISTINCT` keywords.

---

## Problem Statement

Write a query to determine the number of managers without listing their employee numbers.

Label the output column **Number of Managers**.

---

## SQL Query

```sql
SELECT COUNT(DISTINCT MGR) AS "Number of Managers"
FROM EMP;
```

---

## Explanation

- `MGR` stores the manager ID for each employee.
- `DISTINCT` removes duplicate manager IDs.
- `COUNT()` counts the number of unique managers.
- The result is displayed with the column heading **Number of Managers**.

---

## Oracle Functions Used

### COUNT()

Counts the number of non-NULL values.

### DISTINCT

Removes duplicate values before counting.

---

## Expected Output

| Number of Managers |
|--------------------:|
| 6 |

> **Note:** Based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT COUNT(DISTINCT MGR) AS "Number of Managers"
  2  FROM EMP;

Number of Managers
------------------
6
```

---

## Concepts Used

- COUNT()
- DISTINCT
- Aggregate Functions

---

## Learning Outcome

Learned how to count unique values using the `COUNT(DISTINCT column_name)` syntax to generate summarized reports.
