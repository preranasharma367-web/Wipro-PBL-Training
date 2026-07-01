# Assignment 09 – Display Employee Salary Review Date

## Objective

Learn how to use Oracle date functions to calculate future dates and format them into a readable form.

---

## Problem Statement

Display each employee's:

- Employee Name
- Hire Date
- Salary Review Date

The salary review date is:

- The **first Monday** after completing **six months** of service.

Label the review date column **REVIEW**.

Display the review date in the following format:

Monday, the Thirty-First of July, 2000

---

## SQL Query

```sql
SELECT ENAME,
       HIREDATE,
       TO_CHAR(
           NEXT_DAY(ADD_MONTHS(HIREDATE, 6), 'MONDAY'),
           'fmDay, "the" DDth "of" Month, YYYY'
       ) AS REVIEW
FROM EMP;
```

---

## Explanation

- `ADD_MONTHS(HIREDATE, 6)` adds six months to the employee's hire date.
- `NEXT_DAY(..., 'MONDAY')` returns the first Monday after that date.
- `TO_CHAR()` formats the date into a readable sentence.
- `fmDay` removes unnecessary spaces before the day name.
- `DDth` displays the day with ordinal suffix (1st, 2nd, 3rd, etc.).

---

## Oracle Functions Used

### ADD_MONTHS()

Adds a specified number of months to a date.

### NEXT_DAY()

Returns the next specified weekday after a given date.

### TO_CHAR()

Converts a DATE value into formatted text.

---

## Expected Output

| ENAME | HIREDATE | REVIEW |
|--------|----------|--------------------------------------------|
| SMITH | 17-DEC-80 | Monday, the 23RD of June, 1981 |
| ALLEN | 20-FEB-81 | Monday, the 24TH of August, 1981 |
| WARD | 22-FEB-81 | Monday, the 24TH of August, 1981 |
| ... | ... | ... |

> **Note:** The actual review dates depend on the employee hire dates in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         HIREDATE,
  3         TO_CHAR(
  4             NEXT_DAY(ADD_MONTHS(HIREDATE,6),'MONDAY'),
  5             'fmDay, "the" DDth "of" Month, YYYY'
  6         ) AS REVIEW
  7  FROM EMP;

ENAME      HIREDATE   REVIEW
---------- ---------- ----------------------------------------------
SMITH      17-DEC-80  Monday, the 23RD of June, 1981
ALLEN      20-FEB-81  Monday, the 24TH of August, 1981
WARD       22-FEB-81  Monday, the 24TH of August, 1981
...
```

---

## Concepts Used

- Date Functions
- ADD_MONTHS()
- NEXT_DAY()
- TO_CHAR()
- Date Formatting

---

## Learning Outcome

Learned how to calculate future dates using Oracle date functions and present them in a user-friendly formatted output.
