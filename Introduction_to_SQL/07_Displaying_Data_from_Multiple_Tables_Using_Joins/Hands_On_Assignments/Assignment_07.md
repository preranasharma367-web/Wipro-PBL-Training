# Assignment 07 – Display Employee and Department Details Using the USING Clause

## Objective

Learn how to retrieve related data from multiple tables using the ANSI SQL `USING` clause.

---

## Problem Statement

The HR department requires a report containing the following information for all employees:

- Employee Name (ENAME)
- Department Number (DEPTNO)
- Department Name (DNAME)
- Department Location (LOC)

Use the `USING` clause to join the `EMP` and `DEPT` tables.

---

## SQL Query

```sql
SELECT ENAME,
       DEPTNO,
       DNAME,
       LOC
FROM EMP
JOIN DEPT
USING (DEPTNO);
```

---

## Explanation

- `JOIN` combines the `EMP` and `DEPT` tables.
- `USING(DEPTNO)` specifies that both tables are joined using the common column `DEPTNO`.
- Since `DEPTNO` exists in both tables, it appears only once in the output.

---

## Oracle Join Used

### USING Clause

The `USING` clause is used when both tables contain a column with the same name.

**Syntax**

```sql
SELECT columns
FROM table1
JOIN table2
USING (common_column);
```

---

## Expected Output

| ENAME | DEPTNO | DNAME | LOC |
|--------|-------:|------------|-----------|
| SMITH | 20 | RESEARCH | DALLAS |
| ALLEN | 30 | SALES | CHICAGO |
| WARD | 30 | SALES | CHICAGO |
| JONES | 20 | RESEARCH | DALLAS |
| KING | 10 | ACCOUNTING | NEW YORK |
| ... | ... | ... | ... |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         DEPTNO,
  3         DNAME,
  4         LOC
  5  FROM EMP
  6  JOIN DEPT
  7  USING (DEPTNO);

ENAME      DEPTNO DNAME       LOC
---------- ------ ---------- ----------
SMITH          20 RESEARCH    DALLAS
ALLEN          30 SALES       CHICAGO
WARD           30 SALES       CHICAGO
JONES          20 RESEARCH    DALLAS
KING           10 ACCOUNTING  NEW YORK
...
```

---

## Concepts Used

- ANSI JOIN
- USING Clause
- Multiple Table Join

---

## Learning Outcome

Learned how to join two tables using the ANSI SQL `USING` clause when both tables share a common column name.
