# Assignment 08 – Display Employees Working in DALLAS Using the ON Clause

## Objective

Learn how to join two tables using the ANSI SQL `JOIN ... ON` clause.

---

## Problem Statement

The HR department requires a report showing:

- Employee Name (ENAME)
- Department Name (DNAME)
- Department Location (LOC)

Display only those employees who work in **DALLAS**.

Use the **ON** clause to join the `EMP` and `DEPT` tables.

---

## SQL Query

```sql
SELECT E.ENAME,
       D.DNAME,
       D.LOC
FROM EMP E
JOIN DEPT D
ON E.DEPTNO = D.DEPTNO
WHERE D.LOC = 'DALLAS';
```

---

## Explanation

- `JOIN` combines the `EMP` and `DEPT` tables.
- `ON E.DEPTNO = D.DEPTNO` specifies the join condition.
- `WHERE D.LOC = 'DALLAS'` filters employees working in Dallas.

---

## Oracle Join Used

### JOIN ... ON

The `ON` clause specifies the condition used to join two tables.

**Syntax**

```sql
SELECT columns
FROM table1
JOIN table2
ON table1.column = table2.column;
```

---

## Expected Output

| ENAME | DNAME | LOC |
|--------|------------|---------|
| SMITH | RESEARCH | DALLAS |
| JONES | RESEARCH | DALLAS |
| SCOTT | RESEARCH | DALLAS |
| ADAMS | RESEARCH | DALLAS |
| FORD | RESEARCH | DALLAS |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         D.DNAME,
  3         D.LOC
  4  FROM EMP E
  5  JOIN DEPT D
  6  ON E.DEPTNO = D.DEPTNO
  7  WHERE D.LOC = 'DALLAS';

ENAME      DNAME      LOC
---------- ---------- --------
SMITH      RESEARCH   DALLAS
JONES      RESEARCH   DALLAS
SCOTT      RESEARCH   DALLAS
ADAMS      RESEARCH   DALLAS
FORD       RESEARCH   DALLAS
```

---

## Concepts Used

- ANSI JOIN
- ON Clause
- WHERE Clause
- Multiple Table Join

---

## Learning Outcome

Learned how to join tables using the ANSI SQL `ON` clause and filter the results based on specific conditions.
