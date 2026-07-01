# Assignment 10 – Display Employee Hire Day

## Objective

Learn how to determine the day of the week for a date and sort records based on the weekday.

---

## Problem Statement

Display the following details for each employee:

- Employee Name
- Hire Date
- Day of the week on which the employee was hired

Requirements:

- Label the day column as **DAY**.
- Sort the results starting with **Monday**.

---

## SQL Query

```sql
SELECT ENAME,
       HIREDATE,
       TO_CHAR(HIREDATE, 'Day') AS DAY
FROM EMP
ORDER BY TO_CHAR(HIREDATE, 'D');
```

---

## Explanation

- `TO_CHAR(HIREDATE, 'Day')` returns the weekday name.
- `TO_CHAR(HIREDATE, 'D')` returns the numeric day of the week.
- `ORDER BY` sorts the records based on the weekday.

> **Note:** The numeric values returned by `'D'` depend on your Oracle session's NLS settings. In many environments, Sunday is 1 and Monday is 2.

---

## Oracle Functions Used

### TO_CHAR()

**Purpose**

Converts a date into a formatted string.

**Syntax**

```sql
TO_CHAR(date, format)
```

---

## Expected Output

| ENAME | HIREDATE | DAY |
|--------|----------|-----------|
| SCOTT | 19-APR-87 | Monday |
| FORD | 03-DEC-81 | Thursday |
| ALLEN | 20-FEB-81 | Friday |
| ... | ... | ... |

> **Note:** The actual output depends on the data in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         HIREDATE,
  3         TO_CHAR(HIREDATE,'Day') AS DAY
  4  FROM EMP
  5  ORDER BY TO_CHAR(HIREDATE,'D');

ENAME      HIREDATE   DAY
---------- ---------- ----------
SCOTT      19-APR-87  Monday
FORD       03-DEC-81  Thursday
ALLEN      20-FEB-81  Friday
...
```

---

## Concepts Used

- Date Functions
- TO_CHAR()
- ORDER BY
- Date Formatting

---

## Learning Outcome

Learned how to extract the weekday from a date using `TO_CHAR()` and sort records based on the day of the week.
