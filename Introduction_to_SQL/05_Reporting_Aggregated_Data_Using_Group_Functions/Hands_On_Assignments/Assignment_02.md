# Assignment 02 – Display Rounded Salary Statistics

## Objective

Learn how to use Oracle SQL aggregate functions along with the `ROUND()` function to display rounded summary statistics.

---

## Problem Statement

Display the following salary details of all employees:

- Maximum Salary
- Minimum Salary
- Total Salary
- Average Salary

Round all values to the nearest whole number.

Label the columns:

- Maximum
- Minimum
- Sum
- Average

---

## SQL Query

```sql
SELECT ROUND(MAX(SAL)) AS Maximum,
       ROUND(MIN(SAL)) AS Minimum,
       ROUND(SUM(SAL)) AS Sum,
       ROUND(AVG(SAL)) AS Average
FROM EMP;
```

---

## Explanation

- `MAX(SAL)` returns the highest salary.
- `MIN(SAL)` returns the lowest salary.
- `SUM(SAL)` calculates the total salary.
- `AVG(SAL)` calculates the average salary.
- `ROUND()` rounds each result to the nearest whole number.

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

### ROUND()

Rounds a numeric value to the nearest whole number.

---

## Expected Output

| MAXIMUM | MINIMUM | SUM | AVERAGE |
|---------:|---------:|----:|---------:|
| 5000 | 800 | 29025 | 2073 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ROUND(MAX(SAL)) AS Maximum,
  2         ROUND(MIN(SAL)) AS Minimum,
  3         ROUND(SUM(SAL)) AS Sum,
  4         ROUND(AVG(SAL)) AS Average
  5  FROM EMP;

 MAXIMUM  MINIMUM    SUM   AVERAGE
-------- -------- ------- --------
    5000      800   29025     2073
```

---

## Concepts Used

- Aggregate Functions
- ROUND()
- MAX()
- MIN()
- SUM()
- AVG()

---

## Learning Outcome

Learned how to combine Oracle aggregate functions with the `ROUND()` function to produce clean and readable summary reports.
