# Assignment 3

## Problem Statement

Display the `ENAME` and `DEPTNO` from the `EMP` table whose `EMPNO` is **7788**.

## Objective

Learn how to retrieve specific columns from a table using the `SELECT` statement and filter records using the `WHERE` clause.

## SQL Query Used

```sql
SELECT ENAME, DEPTNO
FROM EMP
WHERE EMPNO = 7788;
```

## Query Explanation

- `SELECT ENAME, DEPTNO` → Displays only the Employee Name and Department Number.
- `FROM EMP` → Retrieves data from the EMP table.
- `WHERE EMPNO = 7788` → Filters the record whose employee number is 7788.

## Expected Output

| ENAME | DEPTNO |
|--------|--------|
| SCOTT | 20 |

## Learning Outcome

After completing this assignment, I learned:
- How to retrieve specific columns from a table.
- How to filter records using the `WHERE` clause.
- How to use the `SELECT` statement efficiently.
