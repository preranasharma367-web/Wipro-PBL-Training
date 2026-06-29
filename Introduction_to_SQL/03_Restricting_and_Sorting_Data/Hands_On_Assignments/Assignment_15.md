# Assignment 15

## Question

Display the last name of all employees who have both an **A** and an **S** in their employee name.

---

## Objective

Retrieve employee names that contain both the letters **A** and **S** using the SQL `LIKE` operator.

---

## SQL Query

```sql
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '%A%'
AND ENAME LIKE '%S%';
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee names |
| FROM | Reads data from the EMP table |
| WHERE | Filters matching records |
| LIKE '%A%' | Employee name contains the letter A |
| LIKE '%S%' | Employee name contains the letter S |
| AND | Both conditions must be true |

---

## Pattern Explanation

```
%A%

Meaning:
The letter A can appear anywhere in the employee name.

%S%

Meaning:
The letter S can appear anywhere in the employee name.

Using AND ensures that both letters exist in the same employee name.
```

---

## Expected Output

| ENAME |
|--------|
| JAMES |

*(Output may vary depending on the EMP table data.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '%A%'
  4  AND ENAME LIKE '%S%';

ENAME
------
JAMES
```

---

## Concepts Used

- SELECT
- WHERE
- LIKE Operator
- Wildcards (`%`)
- Logical Operator (AND)

---

## Key Learning

- `%` matches zero or more characters.
- Multiple `LIKE` conditions can be combined using `AND`.
- This query returns only employee names containing both **A** and **S**.

---

## Conclusion

The query successfully retrieves employees whose names contain both the letters **A** and **S** using the `LIKE` operator combined with the logical `AND` operator.
