# Assignment 4

## Question

The HR department has requested a report of all employees and their job IDs. Display the last name concatenated with the job ID (separated by a comma and space) and name the column **Employee and Title** by giving a column alias.

---

## Objective

To learn how to concatenate multiple column values into a single output using the concatenation operator (`||`) and assign a meaningful column alias.

---

## SQL Query

```sql
SELECT ENAME || ', ' || JOB AS "Employee and Title"
FROM EMP;
```

---

## Query Explanation

| SQL Clause | Description |
|------------|-------------|
| `ENAME` | Retrieves the employee name. |
| `||` | Concatenation operator used to join strings. |
| `', '` | Adds a comma followed by a space between the employee name and job title. |
| `JOB` | Retrieves the employee's job title. |
| `AS "Employee and Title"` | Assigns a meaningful alias to the resulting column. |
| `FROM EMP` | Retrieves data from the EMP table. |

---

## Expected Output

| Employee and Title |
|--------------------|
| SMITH, CLERK |
| ALLEN, SALESMAN |
| WARD, SALESMAN |
| JONES, MANAGER |
| MARTIN, SALESMAN |
| ... |

> **Note:** The output shown is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
Employee and Title
-------------------------------
SMITH, CLERK
ALLEN, SALESMAN
WARD, SALESMAN
JONES, MANAGER
MARTIN, SALESMAN
...
```

---

## Concepts Used

- SELECT Statement
- Concatenation Operator (`||`)
- String Literals
- Column Alias (`AS`)

---

## Key Learning

- Learned to combine multiple columns into one output.
- Learned to use the `||` operator for string concatenation.
- Learned to assign meaningful aliases to computed columns.

---

## Conclusion

This assignment demonstrates how to concatenate column values with text using the `||` operator and present the result with a user-friendly column heading.
