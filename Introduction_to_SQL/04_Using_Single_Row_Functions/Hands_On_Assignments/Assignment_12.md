# Assignment 12 – Display Employee Names and Salary Histogram

## Objective

Learn how to manipulate strings and generate a simple salary histogram using Oracle SQL string functions.

---

## Problem Statement

Create a query that:

- Displays the first eight characters of each employee's name.
- Represents the employee's salary using asterisks (`*`).
- Each asterisk represents **1000 dollars**.
- Sort the results in descending order of salary.
- Label the output column **EMPLOYEES_AND_THEIR_SALARIES**.

---

## SQL Query

```sql
SELECT RPAD(SUBSTR(ENAME,1,8),10,' ') ||
       RPAD('*', ROUND(SAL/1000), '*') AS EMPLOYEES_AND_THEIR_SALARIES
FROM EMP
ORDER BY SAL DESC;
```

---

## Explanation

- `SUBSTR(ENAME,1,8)` extracts the first eight characters of the employee name.
- `RPAD(...,10,' ')` aligns employee names neatly.
- `ROUND(SAL/1000)` calculates the number of asterisks.
- `RPAD('*', ROUND(SAL/1000), '*')` creates the salary histogram.
- `ORDER BY SAL DESC` displays employees from highest to lowest salary.

---

## Oracle Functions Used

### SUBSTR()

Extracts a specified portion of a string.

### RPAD()

Pads the right side of a string with the specified character.

### ROUND()

Rounds a numeric value to the nearest whole number.

---

## Expected Output

| EMPLOYEES_AND_THEIR_SALARIES |
|------------------------------|
| KING      ***** |
| SCOTT     *** |
| FORD      *** |
| JONES     *** |
| ALLEN     ** |
| ... |

> **Note:** The number of asterisks depends on the employee's salary.

---

## SQL*Plus Output

```text
SQL> SELECT RPAD(SUBSTR(ENAME,1,8),10,' ') ||
  2         RPAD('*', ROUND(SAL/1000), '*')
  3         AS EMPLOYEES_AND_THEIR_SALARIES
  4  FROM EMP
  5  ORDER BY SAL DESC;

EMPLOYEES_AND_THEIR_SALARIES
-------------------------------------
KING      *****
SCOTT     ***
FORD      ***
JONES     ***
ALLEN     **
...
```

---

## Concepts Used

- SUBSTR()
- RPAD()
- ROUND()
- ORDER BY
- String Manipulation

---

## Learning Outcome

Learned how to combine Oracle string functions to create a simple text-based salary histogram and display formatted employee information.
