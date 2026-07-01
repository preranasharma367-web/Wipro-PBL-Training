# Assignment 14 – Display Employee Grade Using CASE

## Objective

Learn how to use the Oracle `CASE` expression to perform conditional logic in SQL queries.

---

## Problem Statement

Rewrite the previous assignment using the `CASE` expression.

Assign employee grades based on the `JOB` column as follows:

| Job | Grade |
|------|-------|
| PRESIDENT | A |
| MANAGER | B |
| SALESMAN | C |
| CLERK | D |

Employees with any other job should be assigned **Not Assigned**.

---

## SQL Query

```sql
SELECT ENAME,
       JOB,
       CASE
           WHEN JOB = 'PRESIDENT' THEN 'A'
           WHEN JOB = 'MANAGER' THEN 'B'
           WHEN JOB = 'SALESMAN' THEN 'C'
           WHEN JOB = 'CLERK' THEN 'D'
           ELSE 'Not Assigned'
       END AS GRADE
FROM EMP;
```

---

## Explanation

- The `CASE` expression evaluates the value of the `JOB` column.
- Each `WHEN` condition checks for a specific job.
- If no condition matches, the `ELSE` clause returns **"Not Assigned"**.
- The result is displayed under the column alias **GRADE**.

---

## Oracle Feature Used

### CASE Expression

**Purpose**

Performs conditional logic similar to IF-ELSE statements.

**Syntax**

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE default_result
END
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

> **Note:** Employees whose job is not listed are assigned the grade **Not Assigned**.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         JOB,
  3         CASE
  4             WHEN JOB='PRESIDENT' THEN 'A'
  5             WHEN JOB='MANAGER' THEN 'B'
  6             WHEN JOB='SALESMAN' THEN 'C'
  7             WHEN JOB='CLERK' THEN 'D'
  8             ELSE 'Not Assigned'
  9         END AS GRADE
 10  FROM EMP;

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

- CASE Expression
- Conditional Logic
- Column Alias

---

## Learning Outcome

Learned how to implement conditional logic using the Oracle `CASE` expression, providing a more readable and flexible alternative to the `DECODE()` function.
