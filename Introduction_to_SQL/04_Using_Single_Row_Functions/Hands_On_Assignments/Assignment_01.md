# Assignment 01 – Display the Current Date

## Objective

Learn how to use the Oracle `SYSDATE` function to display the current system date.

---

## Problem Statement

Write a query to display the current date.

Label the column **Date**.

---

## SQL Query

```sql
SELECT SYSDATE AS "Date"
FROM DUAL;
```

---

## Explanation

- `SYSDATE` returns the current date and time from the Oracle database server.
- `DUAL` is a special one-row table used for selecting pseudo-columns and expressions.
- `AS "Date"` assigns the column heading **Date**.

---

## Oracle Function Used

### SYSDATE

**Purpose:**

Returns the current system date and time.

**Syntax:**

```sql
SYSDATE
```

---

## Expected Output

| Date |
|------|
| 30-JUN-2026 |

> **Note:** The displayed date depends on the system date of your Oracle database.

---

## SQL*Plus Output

```text
SQL> SELECT SYSDATE AS "Date"
  2  FROM DUAL;

Date
---------
30-JUN-2026
```

---

## Concepts Used

- SYSDATE Function
- DUAL Table
- Column Alias

---

## Learning Outcome

Learned how to retrieve and display the current system date using Oracle's `SYSDATE` function.
