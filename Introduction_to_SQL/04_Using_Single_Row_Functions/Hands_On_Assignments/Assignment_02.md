# Assignment 02 – Calculate Revised Salary

## Objective

Learn how to use arithmetic expressions and numeric functions to calculate a revised salary for employees.

---

## Problem Statement

The HR department needs a report to display the employee number, last name, salary, and salary increased by **15.5%** (expressed as a whole number) for each employee.

Label the column **New Salary**.

---

## SQL Query

```sql
SELECT EMPNO,
       ENAME,
       SAL,
       ROUND(SAL * 1.155) AS "New Salary"
FROM EMP;
```

---

## Explanation

- `SAL * 1.155` increases the salary by **15.5%**.
- `ROUND()` rounds the calculated salary to the nearest whole number.
- `AS "New Salary"` assigns a meaningful column heading.

---

## Oracle Function Used

### ROUND()

**Purpose:**

Rounds a numeric value to the nearest whole number or to a specified number of decimal places.

**Syntax**

```sql
ROUND(number [, decimal_places])
```

---

## Expected Output

| EMPNO | ENAME | SAL | New Salary |
|------:|-------|----:|-----------:|
| 7369 | SMITH | 800 | 924 |
| 7499 | ALLEN | 1600 | 1848 |
| 7521 | WARD | 1250 | 1444 |
| ... | ... | ... | ... |

> **Note:** Output depends on the data available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT EMPNO,
  2         ENAME,
  3         SAL,
  4         ROUND(SAL * 1.155) AS "New Salary"
  5  FROM EMP;

EMPNO ENAME   SAL New Salary
----- ------- ---- ----------
7369  SMITH    800        924
7499  ALLEN   1600       1848
...
```

---

## Concepts Used

- Arithmetic Expressions
- ROUND() Function
- Column Alias

---

## Learning Outcome

Learned how to perform salary calculations using arithmetic expressions and the Oracle `ROUND()` function.
