# Assignment 06 – Calculate Employee Service Duration

## Objective

Learn how to use Oracle date functions to calculate the number of months an employee has worked in the organization.

---

## Problem Statement

The HR department wants to determine the length of employment for each employee.

For each employee:

- Display the employee name.
- Calculate the number of months between today's date and the hire date.
- Label the calculated column **MONTHS_WORKED**.
- Round the value to the nearest whole number.
- Display the employees in ascending order of months worked.

---

## SQL Query

```sql
SELECT ENAME,
       ROUND(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTHS_WORKED
FROM EMP
ORDER BY MONTHS_WORKED;
```

---

## Explanation

- `SYSDATE` returns the current system date.
- `MONTHS_BETWEEN(SYSDATE, HIREDATE)` calculates the number of months between today and the employee's hire date.
- `ROUND()` rounds the result to the nearest whole number.
- `ORDER BY MONTHS_WORKED` sorts the employees based on their duration of service.

---

## Oracle Functions Used

### SYSDATE

**Purpose**

Returns the current system date and time.

---

### MONTHS_BETWEEN()

**Purpose**

Returns the number of months between two dates.

**Syntax**

```sql
MONTHS_BETWEEN(date1, date2)
```

---

### ROUND()

**Purpose**

Rounds a numeric value to the nearest whole number.

---

## Expected Output

| ENAME | MONTHS_WORKED |
|--------|--------------:|
| SMITH | 534 |
| ALLEN | 536 |
| WARD | 537 |
| ... | ... |

> **Note:** The values will vary depending on the current system date.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         ROUND(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTHS_WORKED
  3  FROM EMP
  4  ORDER BY MONTHS_WORKED;

ENAME      MONTHS_WORKED
---------- -------------
SMITH               534
ALLEN               536
WARD                537
...
```

---

## Concepts Used

- Date Functions
- SYSDATE
- MONTHS_BETWEEN()
- ROUND()
- ORDER BY

---

## Learning Outcome

Learned how to calculate an employee's service duration using Oracle date functions and display the results in a sorted format.
