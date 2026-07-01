# Assignment 11 – Display Commission Amount

## Objective

Learn how to replace NULL values with meaningful text using Oracle's NVL() function.

---

## Problem Statement

Create a query that displays the employees' last names and commission amounts.

If an employee does not earn a commission, display **"No Commission"**.

Label the column **COMM**.

---

## SQL Query

```sql
SELECT ENAME,
       NVL(TO_CHAR(COMM), 'No Commission') AS COMM
FROM EMP;
```

---

## Explanation

- `COMM` stores the commission amount.
- Some employees have a NULL commission.
- `TO_CHAR(COMM)` converts the numeric commission into text.
- `NVL()` replaces NULL values with **"No Commission"**.
- The column is displayed with the alias **COMM**.

---

## Oracle Function Used

### NVL()

**Purpose**

Replaces NULL values with another value.

**Syntax**

```sql
NVL(expression, replacement_value)
```

---

## Expected Output

| ENAME | COMM |
|--------|----------------|
| SMITH | No Commission |
| ALLEN | 300 |
| WARD | 500 |
| JONES | No Commission |
| ... | ... |

> **Note:** The output depends on the records available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         NVL(TO_CHAR(COMM), 'No Commission') AS COMM
  3  FROM EMP;

ENAME      COMM
---------- ----------------
SMITH      No Commission
ALLEN      300
WARD       500
JONES      No Commission
...
```

---

## Concepts Used

- NVL()
- TO_CHAR()
- NULL Handling
- Column Alias

---

## Learning Outcome

Learned how to replace NULL values with user-friendly text using Oracle's NVL() function.
