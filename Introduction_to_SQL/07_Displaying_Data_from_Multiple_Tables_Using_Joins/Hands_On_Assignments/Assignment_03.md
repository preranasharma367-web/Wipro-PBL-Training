# Assignment 03 – Display Employees Working in DALLAS

## Objective

Learn how to retrieve employee and department information using an Equi Join with a filtering condition.

---

## Problem Statement

The HR department needs a report of employees working in **DALLAS**.

Display the following details:

- Employee Name (ENAME)
- Job (JOB)
- Department Number (DEPTNO)
- Department Name (DNAME)

Show only employees who work in **DALLAS**.

---

## SQL Query

```sql
SELECT E.ENAME,
       E.JOB,
       E.DEPTNO,
       D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
  AND D.LOC = 'DALLAS';
```

---

## Explanation

- The `EMP` and `DEPT` tables are joined using the common column `DEPTNO`.
- The condition `D.LOC = 'DALLAS'` filters departments located in Dallas.
- The query displays employee details along with the department name.

---

## Oracle Join Used

### Equi Join

An Equi Join combines rows from two tables based on matching values in a common column.

---

## Expected Output

| ENAME | JOB | DEPTNO | DNAME |
|--------|----------|-------:|-----------|
| SMITH | CLERK | 20 | RESEARCH |
| JONES | MANAGER | 20 | RESEARCH |
| SCOTT | ANALYST | 20 | RESEARCH |
| ADAMS | CLERK | 20 | RESEARCH |
| FORD | ANALYST | 20 | RESEARCH |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## SQL*Plus Output

```text
SQL> SELECT E.ENAME,
  2         E.JOB,
  3         E.DEPTNO,
  4         D.DNAME
  5  FROM EMP E, DEPT D
  6  WHERE E.DEPTNO = D.DEPTNO
  7    AND D.LOC = 'DALLAS';

ENAME   JOB       DEPTNO  DNAME
------  --------  ------  ----------
SMITH   CLERK       20    RESEARCH
JONES   MANAGER     20    RESEARCH
SCOTT   ANALYST     20    RESEARCH
ADAMS   CLERK       20    RESEARCH
FORD    ANALYST     20    RESEARCH
```

---

## Concepts Used

- Equi Join
- WHERE Clause
- Table Aliases
- Filtering Records

---

## Learning Outcome

Learned how to retrieve employee and department information using an Equi Join while filtering data based on department location.
