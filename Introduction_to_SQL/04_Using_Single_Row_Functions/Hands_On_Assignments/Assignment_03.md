# Assignment 03 – Calculate Salary Increase

## Objective

Learn how to calculate the salary increase by subtracting the original salary from the revised salary and display the result using a column alias.

---

## Problem Statement

Modify the previous query to add a column that subtracts the old salary from the new salary.

Label the column **Increase**.

---

## SQL Query

```sql
SELECT EMPNO,
       ENAME,
       SAL,
       ROUND(SAL * 1.155) AS "New Salary",
       ROUND(SAL * 1.155) - SAL AS "Increase"
FROM EMP;
```

---

## Explanation

- `ROUND(SAL * 1.155)` calculates the revised salary after a 15.5% increment.
- `ROUND(SAL * 1.155) - SAL` calculates the difference between the revised salary and the original salary.
- `AS "Increase"` assigns a meaningful column heading.

---

## Oracle Function Used

### ROUND()

**Purpose:**

Rounds a numeric value to the nearest whole number.

**Syntax**

```sql
ROUND(number [, decimal_places])
```

---

## Expected Output

| EMPNO | ENAME | SAL | New Salary | Increase |
|------:|-------|----:|-----------:|---------:|
| 7369 | SMITH | 800 | 924 | 124 |
| 7499 | ALLEN | 1600 | 1848 | 248 |
| 7521 | WARD | 1250 | 1444 | 194 |
| ... | ... | ... | ... | ... |

> **Note:** Output depends on the data available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT EMPNO,
  2         ENAME,
  3         SAL,
  4         ROUND(SAL * 1.155) AS "New Salary",
  5         ROUND(SAL * 1.155) - SAL AS "Increase"
  6  FROM EMP;

EMPNO ENAME   SAL New Salary Increase
----- ------- ---- ---------- --------
7369  SMITH    800        924      124
7499  ALLEN   1600       1848      248
...
```

---

## Concepts Used

- Arithmetic Expressions
- ROUND() Function
- Column Alias

---

## Learning Outcome

Learned how to perform calculations using arithmetic expressions and display derived values with meaningful column aliases.
