# Assignment 12

## Question

Create a query that prompts the user for **Manager ID** and generates **EMPNO, ENAME, SAL, DEPTNO**. The user should have the ability to sort the records on a selected column.

---

## Objective

Use SQL*Plus substitution variables to:
- Prompt the user for a Manager ID.
- Display employee details reporting to that manager.
- Allow the user to choose the column used for sorting.

---

## SQL Query

```sql
SELECT EMPNO,
       ENAME,
       SAL,
       DEPTNO
FROM EMP
WHERE MGR = &MANAGER_ID
ORDER BY &SORT_COLUMN;
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee number, name, salary, and department number |
| WHERE | Filters employees reporting to the specified manager |
| &MANAGER_ID | Prompts the user to enter a Manager ID |
| ORDER BY | Sorts the result |
| &SORT_COLUMN | Prompts the user to enter the column name for sorting |

---

## Sample Input

```text
Enter value for manager_id: 7566
Enter value for sort_column: SAL
```

---

## Expected Output

| EMPNO | ENAME | SAL | DEPTNO |
|------:|-------|----:|-------:|
| 7902 | FORD | 3000 | 20 |
| 7788 | SCOTT | 3000 | 20 |

*(Output depends on the values entered by the user.)*

---

## SQL*Plus Output

```text
SQL> SELECT EMPNO,
  2         ENAME,
  3         SAL,
  4         DEPTNO
  5  FROM EMP
  6  WHERE MGR = &MANAGER_ID
  7  ORDER BY &SORT_COLUMN;

Enter value for manager_id: 7566
Enter value for sort_column: SAL

EMPNO  ENAME   SAL   DEPTNO
-----  ------  ----  ------
7902   FORD    3000     20
7788   SCOTT   3000     20
```

---

## Concepts Used

- SELECT
- WHERE
- ORDER BY
- SQL*Plus Substitution Variables (&)

---

## Key Learning

- SQL*Plus substitution variables make queries interactive.
- The user can enter values at runtime.
- ORDER BY can dynamically sort results using a user-specified column.

---

## Conclusion

This query demonstrates how SQL*Plus prompts can be used to filter data by Manager ID and dynamically sort the output based on a user-selected column.
