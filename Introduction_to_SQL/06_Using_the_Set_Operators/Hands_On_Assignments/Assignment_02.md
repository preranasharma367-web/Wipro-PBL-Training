# Assignment 02 – Display Department-wise, Job-wise and Total Salary Using UNION

## Objective

Learn how to combine the results of multiple queries using the Oracle `UNION` set operator.

---

## Problem Statement

Using the `UNION` set operator, display:

- Department Number and total salary for each department.
- Job and total salary for each job.
- Overall total salary.

---

## SQL Query

```sql
SELECT TO_CHAR(DEPTNO) AS CATEGORY,
       SUM(SAL) AS TOTAL_SALARY
FROM EMP
GROUP BY DEPTNO

UNION

SELECT JOB,
       SUM(SAL)
FROM EMP
GROUP BY JOB

UNION

SELECT 'TOTAL',
       SUM(SAL)
FROM EMP;
```

---

## Explanation

- The first query displays the total salary for each department.
- The second query displays the total salary for each job.
- The third query displays the overall total salary.
- `UNION` combines the three result sets and removes duplicate rows.
- `TO_CHAR(DEPTNO)` converts the department number to a string so it matches the data type of the `JOB` column.

---

## Oracle Features Used

### UNION

Combines the results of two or more SELECT statements and removes duplicate rows.

### SUM()

Calculates the total salary.

### GROUP BY

Groups rows based on department or job.

### TO_CHAR()

Converts a numeric value into a character string.

---

## Expected Output

| CATEGORY | TOTAL_SALARY |
|-----------|-------------:|
| 10 | 8750 |
| 20 | 10875 |
| 30 | 9400 |
| ANALYST | 6000 |
| CLERK | 4150 |
| MANAGER | 8275 |
| PRESIDENT | 5000 |
| SALESMAN | 5600 |
| TOTAL | 29025 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT TO_CHAR(DEPTNO), SUM(SAL)
  2  FROM EMP
  3  GROUP BY DEPTNO
  4  UNION
  5  SELECT JOB, SUM(SAL)
  6  FROM EMP
  7  GROUP BY JOB
  8  UNION
  9  SELECT 'TOTAL', SUM(SAL)
 10  FROM EMP;

CATEGORY     TOTAL_SALARY
-----------  ------------
10                 8750
20                10875
30                 9400
ANALYST            6000
CLERK              4150
MANAGER            8275
PRESIDENT          5000
SALESMAN           5600
TOTAL             29025
```

---

## Concepts Used

- UNION
- GROUP BY
- SUM()
- TO_CHAR()

---

## Learning Outcome

Learned how to combine multiple summary reports into a single result set using the Oracle `UNION` operator.
