# Assignment 06 – Display the Difference Between Highest and Lowest Salary

## Objective

Learn how to combine Oracle aggregate functions with arithmetic expressions to calculate the salary range.

---

## Problem Statement

Write a query to display the difference between the highest salary and the lowest salary.

Label the output column **DIFFERENCE**.

---

## SQL Query

```sql
SELECT MAX(SAL) - MIN(SAL) AS DIFFERENCE
FROM EMP;
```

---

## Explanation

- `MAX(SAL)` returns the highest salary in the EMP table.
- `MIN(SAL)` returns the lowest salary in the EMP table.
- Subtracting the minimum salary from the maximum salary gives the salary difference.
- The result is displayed with the alias **DIFFERENCE**.

---

## Oracle Functions Used

### MAX()

Returns the highest value in a column.

### MIN()

Returns the lowest value in a column.

---

## Expected Output

| DIFFERENCE |
|-----------:|
| 4200 |

> **Note:** Based on the standard Oracle SCOTT.EMP table, where the highest salary is **5000** and the lowest salary is **800**.

---

## SQL*Plus Output

```text
SQL> SELECT MAX(SAL) - MIN(SAL) AS DIFFERENCE
  2  FROM EMP;

DIFFERENCE
----------
4200
```

---

## Concepts Used

- Aggregate Functions
- MAX()
- MIN()
- Arithmetic Expressions
- Column Alias

---

## Learning Outcome

Learned how to calculate the difference between two aggregate values using arithmetic expressions in Oracle SQL.
