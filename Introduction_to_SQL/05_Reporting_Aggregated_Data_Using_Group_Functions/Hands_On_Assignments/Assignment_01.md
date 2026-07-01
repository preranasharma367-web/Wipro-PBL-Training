# Assignment 01 – Find Highest, Lowest, Sum, and Average Salary

## Objective

Learn how to use Oracle SQL aggregate functions to calculate summary statistics from employee salary data.

---

## Problem Statement

Find the following salary details of all employees:

- Highest Salary
- Lowest Salary
- Total Salary
- Average Salary

Label the columns:

- Maximum
- Minimum
- Sum
- Average

---

## SQL Query

```sql
SELECT MAX(SAL) AS Maximum,
       MIN(SAL) AS Minimum,
       SUM(SAL) AS Sum,
       AVG(SAL) AS Average
FROM EMP;
```

---

## Explanation

- `MAX(SAL)` returns the highest salary.
- `MIN(SAL)` returns the lowest salary.
- `SUM(SAL)` calculates the total salary of all employees.
- `AVG(SAL)` calculates the average salary.

---

## Oracle Functions Used

### MAX()

Returns the highest value.

### MIN()

Returns the lowest value.

### SUM()

Returns the total of all values.

### AVG()

Returns the average value.

---

## Expected Output

| MAXIMUM | MINIMUM | SUM | AVERAGE |
|---------:|---------:|----:|---------:|
| 5000 | 800 | 29025 | 2073.214286 |

> **Note:** Values are based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT MAX(SAL) AS Maximum,
  2         MIN(SAL) AS Minimum,
  3         SUM(SAL) AS Sum,
  4         AVG(SAL) AS Average
  5  FROM EMP;

 MAXIMUM  MINIMUM    SUM     AVERAGE
-------- -------- ------- ------------
    5000      800   29025   2073.214286
```

---

## Concepts Used

- Aggregate Functions
- MAX()
- MIN()
- SUM()
- AVG()

---

## Learning Outcome

Learned how to use Oracle aggregate functions to generate summary reports from employee salary data.
