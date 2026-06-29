# Assignment 11

## Question

Create a report to display the last name and job title of all employees who do not have a manager.

---

## Objective

Retrieve the employee name and job title of employees who do not report to any manager.

---

## SQL Query

```sql
SELECT ENAME,
       JOB
FROM EMP
WHERE MGR IS NULL;
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee name and job title |
| FROM | Reads data from the EMP table |
| WHERE | Filters records |
| IS NULL | Selects employees whose Manager ID is NULL |

---

## Expected Output

| ENAME | JOB |
|--------|------|
| KING | PRESIDENT |

*(Output may vary depending on the EMP table.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         JOB
  3  FROM EMP
  4  WHERE MGR IS NULL;

ENAME      JOB
---------  ----------
KING       PRESIDENT
```

---

## Concepts Used

- SELECT
- WHERE
- NULL Values
- IS NULL Operator

---

## Key Learning

- NULL represents the absence of a value.
- NULL values cannot be compared using `=` or `!=`.
- Use the `IS NULL` operator to retrieve records with NULL values.

---

## Conclusion

This query displays employees who do not have a manager by filtering records where the Manager ID is NULL.
