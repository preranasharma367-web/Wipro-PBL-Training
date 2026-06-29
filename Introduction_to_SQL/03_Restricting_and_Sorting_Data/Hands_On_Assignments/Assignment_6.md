# Assignment 6

## Question

Create a report to display the employee name, job, and hire date for employees whose names are **SCOTT** or **TURNER**. Display the results in ascending order of hire date.

---

## Objective

To retrieve selected employee records using the `WHERE` clause with multiple conditions and sort the results by hire date.

---

---

## SQL Query

```sql
SELECT ENAME, JOB, HIREDATE
FROM EMP
WHERE ENAME IN ('SCOTT', 'TURNER')
ORDER BY HIREDATE ASC;
```

---

## Query Explanation

| SQL Clause | Description |
|------------|-------------|
| `SELECT ENAME, JOB, HIREDATE` | Retrieves the employee name, job, and hire date. |
| `FROM EMP` | Reads data from the EMP table. |
| `WHERE ENAME IN ('SCOTT','TURNER')` | Filters only SCOTT and TURNER. |
| `ORDER BY HIREDATE ASC` | Sorts the records by hire date in ascending order. |

---

## Expected Output

| ENAME | JOB | HIREDATE |
|-------|-----------|-----------|
| TURNER | SALESMAN | 08-SEP-81 |
| SCOTT | ANALYST | 19-APR-87 |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
ENAME      JOB         HIREDATE
---------  ----------  ---------
TURNER     SALESMAN    08-SEP-81
SCOTT      ANALYST     19-APR-87
```

---

## Concepts Used

- SELECT Statement
- WHERE Clause
- IN Operator
- ORDER BY Clause

---

## Key Learning

- Learned to filter multiple values using the `IN` operator.
- Learned to sort query results using `ORDER BY`.
- Understood how multiple SQL clauses work together.

---

## Conclusion

This assignment demonstrates how to retrieve specific employee records using the `IN` operator and present them in chronological order using the `ORDER BY` clause.
