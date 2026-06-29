# Assignment 2

## Question

Display all unique job codes from the **EMP** table.

---

## Objective

To retrieve all unique job titles from the EMP table by removing duplicate values.

---

## SQL Query

```sql
SELECT DISTINCT JOB
FROM EMP
ORDER BY JOB;
```

---

## Query Explanation

| SQL Clause            | Description                                          |
| --------------------- | ---------------------------------------------------- |
| `SELECT DISTINCT JOB` | Retrieves only unique job titles from the EMP table. |
| `FROM EMP`            | Reads data from the EMP table.                       |
| `ORDER BY JOB`        | Sorts the job titles in alphabetical order.          |

---

## Expected Output

| JOB       |
| --------- |
| ANALYST   |
| CLERK     |
| MANAGER   |
| PRESIDENT |
| SALESMAN  |

> **Note:** This output is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
JOB
---------
ANALYST
CLERK
MANAGER
PRESIDENT
SALESMAN
```

---

## Concepts Used

* SELECT Statement
* DISTINCT Keyword
* ORDER BY Clause

---

## Key Learning

* Learned to retrieve unique values using `DISTINCT`.
* Learned to sort query results using `ORDER BY`.
* Understood how duplicate values are removed from query results.

---

## Conclusion

This assignment demonstrates the use of the `DISTINCT` keyword to remove duplicate records and the `ORDER BY` clause to display the results in ascending order.
