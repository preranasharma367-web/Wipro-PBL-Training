# Assignment 14

## Question

Display all employee last names in which the **third letter of the name is A**.

---

## Objective

Retrieve employee names where the third character is the letter **A** using the SQL `LIKE` operator and wildcard characters.

---

## SQL Query

```sql
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%';
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves the employee name |
| FROM | Reads data from the EMP table |
| WHERE | Filters the required records |
| LIKE | Performs pattern matching |
| __A% | First two characters can be anything, third character must be A, followed by any number of characters |

---

## Pattern Explanation

```
_  = Exactly one character
%  = Zero or more characters

Pattern:

__A%

Meaning:

1st Character → Any
2nd Character → Any
3rd Character → Must be A
Remaining Characters → Any
```

---

## Expected Output

| ENAME |
|--------|
| BLAKE |

*(Output may vary depending on the EMP table data.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '__A%';

ENAME
------
BLAKE
```

---

## Concepts Used

- SELECT
- WHERE
- LIKE Operator
- Wildcards (`_` and `%`)

---

## Key Learning

- `_` represents exactly one character.
- `%` represents zero or more characters.
- `LIKE` is used for pattern matching in SQL.

---

## Conclusion

This query filters employee names where the third letter is **A** using the `LIKE` operator and underscore wildcard.
