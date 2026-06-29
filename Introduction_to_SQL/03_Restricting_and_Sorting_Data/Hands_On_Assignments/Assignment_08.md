# Assignment 8

## Question

Modify the previous query to display the last name and salary of employees who earn between 2000 and 3000 and are in department 20 or 30. Label the columns **Employee** and **Monthly Salary**, respectively by giving Column Alias.

---

## Objective

Retrieve employees:
- Working in Department 20 or 30
- Salary between 2000 and 3000
- Display only employee name and salary
- Use meaningful column aliases

---

## SQL Query

```sql
SELECT ENAME AS "Employee",
       SAL AS "Monthly Salary"
FROM EMP
WHERE SAL BETWEEN 2000 AND 3000
  AND DEPTNO IN (20,30);
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee name and salary |
| AS | Gives user-friendly column headings |
| WHERE | Filters matching records |
| BETWEEN | Selects salary from 2000 to 3000 |
| IN | Restricts results to departments 20 and 30 |

---

## Expected Output

| Employee | Monthly Salary |
|-----------|---------------:|
| JONES | 2975 |
| SCOTT | 3000 |
| FORD | 3000 |

*(Output may vary depending on the EMP table.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME AS "Employee",
  2         SAL AS "Monthly Salary"
  3  FROM EMP
  4  WHERE SAL BETWEEN 2000 AND 3000
  5    AND DEPTNO IN (20,30);

Employee      Monthly Salary
-----------   --------------
JONES                 2975
SCOTT                 3000
FORD                  3000
```

---

## Concepts Used

- SELECT
- WHERE
- BETWEEN
- IN
- Column Alias (AS)

---

## Key Learning

- Filter records using multiple conditions.
- Use BETWEEN to define salary range.
- Use IN for multiple department values.
- Improve report readability using aliases.

---

## Conclusion

This query retrieves employees earning between **2000 and 3000** in **Departments 20 and 30** while displaying meaningful column headings.
