# Assignment 03 – Display Job and Department Using UNION ALL

## Objective

Learn how to combine multiple query results using the Oracle `UNION ALL` set operator.

---

## Problem Statement

Using the `UNION ALL` set operator, display the following:

- JOB
- DEPTNO

For employees working in departments:

- 20
- 10
- 30

Display the departments in the above order.

---

## SQL Query

```sql
SELECT JOB, DEPTNO
FROM EMP
WHERE DEPTNO = 20

UNION ALL

SELECT JOB, DEPTNO
FROM EMP
WHERE DEPTNO = 10

UNION ALL

SELECT JOB, DEPTNO
FROM EMP
WHERE DEPTNO = 30;
```

---

## Explanation

- The first query displays employees from Department 20.
- The second query displays employees from Department 10.
- The third query displays employees from Department 30.
- `UNION ALL` combines all three result sets.
- `UNION ALL` preserves duplicate rows and maintains the order of the SELECT statements.

---

## Oracle Set Operator Used

### UNION ALL

**Purpose**

Combines the results of multiple SELECT statements without removing duplicate rows.

**Syntax**

```sql
SELECT ...
UNION ALL
SELECT ...
UNION ALL
SELECT ...;
```

---

## Expected Output

| JOB | DEPTNO |
|------------|-------:|
| CLERK | 20 |
| MANAGER | 20 |
| ANALYST | 20 |
| CLERK | 20 |
| ANALYST | 20 |
| PRESIDENT | 10 |
| MANAGER | 10 |
| CLERK | 10 |
| SALESMAN | 30 |
| MANAGER | 30 |
| SALESMAN | 30 |
| SALESMAN | 30 |
| SALESMAN | 30 |
| CLERK | 30 |

> **Note:** Output is based on the standard Oracle SCOTT.EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT JOB, DEPTNO
  2  FROM EMP
  3  WHERE DEPTNO = 20
  4
  5  UNION ALL
  6
  7  SELECT JOB, DEPTNO
  8  FROM EMP
  9  WHERE DEPTNO = 10
 10
 11  UNION ALL
 12
 13  SELECT JOB, DEPTNO
 14  FROM EMP
 15  WHERE DEPTNO = 30;

JOB         DEPTNO
---------- -------
CLERK           20
MANAGER         20
ANALYST         20
CLERK           20
ANALYST         20
PRESIDENT       10
MANAGER         10
CLERK           10
SALESMAN        30
MANAGER         30
SALESMAN        30
SALESMAN        30
SALESMAN        30
CLERK           30
```

---

## Concepts Used

- UNION ALL
- WHERE Clause
- Set Operators

---

## Learning Outcome

Learned how to combine multiple query results in a specified order using the Oracle `UNION ALL` set operator.
