# Assignment 16

## Question

Display the employee name, job, and salary for all employees whose **job is CLERK** and whose **salary is either 800, 950, or 1300**.

---

## Objective

Retrieve employee details for employees working as **CLERK** and earning one of the specified salary values using the `IN` operator.

---

## SQL Query

```sql
SELECT ENAME,
       JOB,
       SAL
FROM EMP
WHERE JOB = 'CLERK'
AND SAL IN (800, 950, 1300);
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| `SELECT ENAME, JOB, SAL` | Retrieves employee name, job title, and salary |
| `FROM EMP` | Reads data from the EMP table |
| `WHERE JOB = 'CLERK'` | Filters employees whose job is CLERK |
| `SAL IN (800, 950, 1300)` | Retrieves employees whose salary is 800, 950, or 1300 |
| `AND` | Ensures both conditions are satisfied |

---

## Expected Output

| ENAME | JOB | SAL |
|--------|--------|----:|
| SMITH | CLERK | 800 |
| MILLER | CLERK | 1300 |

> **Note:** Based on the standard Oracle SCOTT schema, there is no clerk with a salary of **950**, so only matching employees are displayed.

---

## Oracle SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         JOB,
  3         SAL
  4  FROM EMP
  5  WHERE JOB = 'CLERK'
  6  AND SAL IN (800,950,1300);

ENAME      JOB      SAL
---------  -------  ----
SMITH      CLERK     800
MILLER     CLERK    1300
```

---

## Concepts Used

- SELECT Statement
- WHERE Clause
- AND Operator
- IN Operator

---

## Key Learning

- `IN` is used to compare a column with multiple values.
- `AND` combines multiple conditions in a query.
- SQL queries can filter records using both text and numeric conditions.

---

## Conclusion

This assignment demonstrates how to use the `IN` operator together with the `AND` operator to retrieve employees who satisfy multiple filtering conditions.
