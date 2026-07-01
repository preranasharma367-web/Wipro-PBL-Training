# Assignment 08 – Format Employee Salary

## Objective

Learn how to format numeric values using Oracle string functions and display them with custom padding.

---

## Problem Statement

Create a query to display the employee's last name and salary.

Requirements:

- Display the employee name.
- Format the salary to be **15 characters wide**.
- **Left-pad** the salary with the **$** symbol.
- Label the salary column **SALARY**.

---

## SQL Query

```sql
SELECT ENAME,
       LPAD(SAL, 15, '$') AS SALARY
FROM EMP;
```

---

## Explanation

- `LPAD()` pads the left side of a value with a specified character.
- `SAL` is padded with the `$` symbol.
- The total length of the formatted salary becomes **15 characters**.
- The column is displayed with the alias **SALARY**.

---

## Oracle Function Used

### LPAD()

**Purpose**

Pads the left side of a string with the specified character until it reaches the desired length.

**Syntax**

```sql
LPAD(expression, length, pad_string)
```

---

## Expected Output

| ENAME | SALARY |
|--------|-----------------|
| SMITH | $$$$$$$$$$$800 |
| ALLEN | $$$$$$$$$$1600 |
| WARD | $$$$$$$$$$1250 |
| ... | ... |

> **Note:** The number of `$` symbols depends on the salary value to make the total width **15 characters**.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         LPAD(SAL,15,'$') AS SALARY
  3  FROM EMP;

ENAME      SALARY
---------- -----------------
SMITH      $$$$$$$$$$$800
ALLEN      $$$$$$$$$$1600
WARD       $$$$$$$$$$1250
...
```

---

## Concepts Used

- LPAD()
- String Formatting
- Column Alias

---

## Learning Outcome

Learned how to format numeric output using Oracle's `LPAD()` function to create professional-looking reports.
