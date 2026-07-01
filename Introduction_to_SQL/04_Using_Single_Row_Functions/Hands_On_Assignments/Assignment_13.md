# Assignment 13 – Display Employee Grade Using DECODE

## Objective

Learn how to use Oracle's `DECODE()` function to perform conditional value mapping within a SQL query.

---

## Problem Statement

Using the `DECODE()` function, display the grade of each employee based on the value of the `JOB` column.

Assign grades as follows:

| Job | Grade |
|------|-------|
| PRESIDENT | A |
| MANAGER | B |
| SALESMAN | C |
| CLERK | D |

Employees with any other job should be assigned the grade **Not Assigned**.

---

## SQL Query

```sql
SELECT ENAME,
       JOB,
       DECODE(JOB,
              'PRESIDENT', 'A',
              'MANAGER', 'B',
              'SALESMAN', 'C',
              'CLERK', 'D',
              'Not Assigned') AS GRADE
FROM EMP;
```

---

## Explanation

- `DECODE()` compares the value of the `JOB` column.
- If the job matches one of the specified values, the corresponding grade is returned.
- If no match is found, **"Not Assigned"** is displayed.

---

## Oracle Function Used

### DECODE()

**Purpose**

Performs conditional comparisons similar to an IF-ELSE statement.

**Syntax**

```sql
DECODE(expression,
       search1, result1,
       search2, result2,
       ...,
       default_result)
```

---

## Expected Output

| ENAME | JOB | GRADE |
|--------|------------|-------|
| KING | PRESIDENT | A |
| JONES | MANAGER | B |
| BLAKE | MANAGER | B |
| ALLEN | SALESMAN | C |
| SMITH | CLERK | D |
| SCOTT | ANALYST | Not Assigned |
| ... | ... | ... |

> **Note:** Employees whose job is not listed receive the grade **Not Assigned**.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         JOB,
  3         DECODE(JOB,
  4                'PRESIDENT','A',
  5                'MANAGER','B',
  6                'SALESMAN','C',
  7                'CLERK','D',
  8                'Not Assigned') AS GRADE
  9  FROM EMP;

ENAME      JOB         GRADE
---------- ----------- -------------
KING       PRESIDENT   A
JONES      MANAGER     B
ALLEN      SALESMAN    C
SMITH      CLERK       D
SCOTT      ANALYST     Not Assigned
...
```

---

## Concepts Used

- DECODE()
- Conditional Expressions
- Column Alias

---

## Learning Outcome

Learned how to use Oracle's `DECODE()` function to implement conditional logic and categorize data based on column values.
