# Assignment 02 – Display SALESMAN Details Using Equi Join

## Objective

Learn how to retrieve related data from multiple tables using an Equi Join.

---

## Problem Statement

The HR department needs a report of all employees.

Display the following details for employees whose **JOB** is **SALESMAN**:

- Job
- Manager Number
- Salary
- Commission
- Department Name

Use an **Equi Join** between the `EMP` and `DEPT` tables.

---

## SQL Query

```sql
SELECT E.JOB,
       E.MGR,
       E.SAL,
       E.COMM,
       D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
  AND E.JOB = 'SALESMAN';
```

---

## Explanation

- `EMP` and `DEPT` are joined using the common column `DEPTNO`.
- `WHERE E.DEPTNO = D.DEPTNO` performs the Equi Join.
- `E.JOB = 'SALESMAN'` filters only employees whose job is SALESMAN.
- The query displays job, manager number, salary, commission, and department name.

---

## Oracle Join Used

### Equi Join

An Equi Join combines rows from two tables based on equality between common columns.

**Syntax**

```sql
SELECT columns
FROM table1 t1, table2 t2
WHERE t1.common_column = t2.common_column;
```

---

## Expected Output

| JOB | MGR | SAL | COMM | DNAME |
|------------|-----:|----:|----:|--------|
| SALESMAN | 7698 | 1600 | 300 | SALES |
| SALESMAN | 7698 | 1250 | 500 | SALES |
| SALESMAN | 7698 | 1250 | 1400 | SALES |
| SALESMAN | 7698 | 1500 | 0 | SALES |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.JOB,
  2         E.MGR,
  3         E.SAL,
  4         E.COMM,
  5         D.DNAME
  6  FROM EMP E, DEPT D
  7  WHERE E.DEPTNO = D.DEPTNO
  8    AND E.JOB = 'SALESMAN';

JOB        MGR   SAL COMM DNAME
---------- ---- ---- ---- ------
SALESMAN   7698 1600  300 SALES
SALESMAN   7698 1250  500 SALES
SALESMAN   7698 1250 1400 SALES
SALESMAN   7698 1500    0 SALES
```

---

## Concepts Used

- Equi Join
- WHERE Clause
- Multiple Tables
- Table Aliases

---

## Learning Outcome

Learned how to retrieve related employee and department information using an Equi Join with a filtering condition.
