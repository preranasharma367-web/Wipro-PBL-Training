# Assignment 7

## Question

Display the employee name and department number of all employees in departments **20** or **30** in ascending alphabetical order by employee name.

---

## Objective

To retrieve employee names and department numbers for employees working in departments 20 and 30, and display the results in alphabetical order.

---

## Execution Steps

1. Open Oracle SQL*Plus.
2. Connect to the SCOTT schema.
3. Execute the SQL query.
4. Verify the output.

---

## SQL Query

```sql
SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30)
ORDER BY ENAME ASC;
```

---

## Query Explanation

| SQL Clause | Description |
|------------|-------------|
| `SELECT ENAME, DEPTNO` | Retrieves employee name and department number. |
| `FROM EMP` | Reads data from the EMP table. |
| `WHERE DEPTNO IN (20, 30)` | Filters employees belonging to departments 20 or 30. |
| `ORDER BY ENAME ASC` | Sorts employee names alphabetically. |

---

## Expected Output

| ENAME | DEPTNO |
|--------|--------|
| ADAMS | 20 |
| ALLEN | 30 |
| BLAKE | 30 |
| FORD | 20 |
| JAMES | 30 |
| JONES | 20 |
| MARTIN | 30 |
| SCOTT | 20 |
| SMITH | 20 |
| TURNER | 30 |
| WARD | 30 |

> **Note:** Output is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
ENAME      DEPTNO
---------  ------
ADAMS      20
ALLEN      30
BLAKE      30
FORD       20
JAMES      30
JONES      20
MARTIN     30
SCOTT      20
SMITH      20
TURNER     30
WARD       30
```

---

## Concepts Used

- SELECT Statement
- WHERE Clause
- IN Operator
- ORDER BY Clause

---

## Key Learning

- Learned to filter records using the `IN` operator.
- Learned to sort records alphabetically using `ORDER BY`.
- Understood how to retrieve records from multiple departments.

---

## Conclusion

This assignment demonstrates how to retrieve employee details based on multiple department numbers using the `IN` operator and sort the output alphabetically using the `ORDER BY` clause.
