# Assignment 13

## Question

The HR department wants to run reports based on a manager. Create a query that prompts the user for a **Manager ID (MGR)** and displays the **Employee Number, Employee Name, Salary, and Department Number** of employees reporting to that manager. The report should also allow the user to sort the results on a selected column.

---

## Objective

Create an interactive SQL*Plus query that:
- Prompts the user for a Manager ID.
- Displays employee details for employees reporting to that manager.
- Allows the user to sort the output dynamically.

---

## SQL Query

```sql
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE MGR = &MGR
ORDER BY &SORT_COLUMN;
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee number, employee name, salary and department number |
| FROM | Reads records from the EMP table |
| WHERE | Filters employees reporting to the specified manager |
| &MGR | Prompts the user to enter a Manager ID |
| ORDER BY | Sorts the result |
| &SORT_COLUMN | Prompts the user for the column to sort the output |

---

## Sample Input

```text
Enter value for mgr: 7839
Enter value for sort_column: ENAME
```

---

## Expected Output

| EMPNO | ENAME | SAL | DEPTNO |
|------:|-------|----:|-------:|
| 7698 | BLAKE | 2850 | 30 |
| 7782 | CLARK | 2450 | 10 |
| 7566 | JONES | 2975 | 20 |

*(Output may vary depending on the entered Manager ID and sort column.)*

---

## SQL*Plus Output

```text
SQL> SELECT EMPNO,
  2         ENAME,
  3         SAL,
  4         DEPTNO
  5  FROM EMP
  6  WHERE MGR = &MGR
  7  ORDER BY &SORT_COLUMN;

Enter value for mgr: 7839
Enter value for sort_column: ENAME

EMPNO  ENAME   SAL   DEPTNO
-----  ------  ----  ------
7698   BLAKE   2850     30
7782   CLARK   2450     10
7566   JONES   2975     20
```

---

## Concepts Used

- SELECT
- WHERE
- ORDER BY
- SQL*Plus Substitution Variables
- Dynamic Sorting

---

## Key Learning

- SQL*Plus substitution variables make queries interactive.
- Users can enter different Manager IDs without modifying the SQL query.
- Dynamic sorting makes reports flexible and reusable.

---

## Conclusion

This query generates employee reports for a user-specified manager and allows sorting on any selected column using SQL*Plus substitution variables.
