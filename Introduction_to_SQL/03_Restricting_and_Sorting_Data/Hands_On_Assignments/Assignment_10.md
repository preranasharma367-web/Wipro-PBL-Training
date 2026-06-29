# Assignment 10

## Question

Display the ENAME and SAL of employees who earn more than an amount the user specifies after a prompt.

---

## Objective

Use SQL*Plus substitution variables to prompt the user for a salary value and display employees earning more than the entered amount.

---

## SQL Query

```sql
SELECT ENAME,
       SAL
FROM EMP
WHERE SAL > &SALARY;
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee name and salary |
| FROM | Reads data from the EMP table |
| WHERE | Filters records |
| &SALARY | Prompts the user to enter a salary amount at runtime |

---

## Sample Input

```text
Enter value for salary: 2000
```

---

## Expected Output

| ENAME | SAL |
|--------|----:|
| JONES | 2975 |
| BLAKE | 2850 |
| CLARK | 2450 |
| SCOTT | 3000 |
| KING | 5000 |
| FORD | 3000 |

*(Output depends on the value entered by the user.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         SAL
  3  FROM EMP
  4  WHERE SAL > &SALARY;

Enter value for salary: 2000
old   4: WHERE SAL > &SALARY
new   4: WHERE SAL > 2000

ENAME      SAL
---------  ----
JONES      2975
BLAKE      2850
CLARK      2450
SCOTT      3000
KING       5000
FORD       3000
```

---

## Concepts Used

- SELECT
- WHERE
- Comparison Operator (>)
- SQL*Plus Substitution Variable (&)

---

## Key Learning

- `&` creates a runtime prompt.
- The user can enter different values without modifying the SQL query.
- This feature makes SQL queries interactive.

---

## Conclusion

This query demonstrates the use of SQL*Plus substitution variables to dynamically filter employees based on a user-entered salary value.
