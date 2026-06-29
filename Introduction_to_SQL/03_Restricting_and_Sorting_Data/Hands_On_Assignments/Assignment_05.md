# Assignment 5

## Question

To familiarize yourself with the data in the EMP table, create a query to display the employee name, job, hire date, and manager ID separated by commas. Name the output column **THE_OUTPUT**.

---

## Objective

To learn how to concatenate multiple columns into a single formatted output using the concatenation operator and assign a custom column alias.

---

## SQL Query

```sql
SELECT ENAME || ', ' || JOB || ', ' || HIREDATE || ', ' || MGR AS "THE_OUTPUT"
FROM EMP;
```

---

## Query Explanation

| SQL Clause | Description |
|------------|-------------|
| `ENAME` | Displays the employee name. |
| `JOB` | Displays the employee's job title. |
| `HIREDATE` | Displays the employee's hire date. |
| `MGR` | Displays the manager number. |
| `||` | Concatenates multiple columns into a single output. |
| `', '` | Adds a comma and space between values. |
| `AS "THE_OUTPUT"` | Assigns the output column heading. |

---

## Expected Output

| THE_OUTPUT |
|-------------|
| SMITH, CLERK, 17-DEC-80, 7902 |
| ALLEN, SALESMAN, 20-FEB-81, 7698 |
| WARD, SALESMAN, 22-FEB-81, 7698 |
| JONES, MANAGER, 02-APR-81, 7839 |
| ... |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
THE_OUTPUT
------------------------------------------------------------
SMITH, CLERK, 17-DEC-80, 7902
ALLEN, SALESMAN, 20-FEB-81, 7698
WARD, SALESMAN, 22-FEB-81, 7698
JONES, MANAGER, 02-APR-81, 7839
...
```

---

## Concepts Used

- SELECT Statement
- Concatenation Operator (`||`)
- Column Alias (`AS`)
- String Literals

---

## Key Learning

- Learned to combine multiple columns into one formatted output.
- Learned to insert custom separators between values.
- Learned to create meaningful report-style outputs.

---

## Conclusion

This assignment demonstrates how SQL concatenation can be used to create readable reports by combining multiple column values into a single output column.
