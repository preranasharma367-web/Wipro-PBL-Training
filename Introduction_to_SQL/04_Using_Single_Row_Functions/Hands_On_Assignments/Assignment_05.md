# Assignment 05 – Prompt User for Employee Name Initial

## Objective

Learn how to use SQL*Plus substitution variables to accept user input and filter employee records dynamically.

---

## Problem Statement

Rewrite the query so that the user is prompted to enter a letter that starts the employee name.

For example, if the user enters **H**, the output should display all employees whose names start with **H**.

---

## SQL Query

```sql
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '&LETTER%';
```

---

## Explanation

- `&LETTER` is a SQL*Plus substitution variable.
- SQL*Plus prompts the user to enter a letter at runtime.
- `LIKE '&LETTER%'` retrieves employee names beginning with the entered letter.
- `%` is a wildcard representing zero or more characters.

---

## Oracle Feature Used

### SQL*Plus Substitution Variable (`&`)

**Purpose**

Prompts the user to enter a value while executing the query.

**Syntax**

```sql
&variable_name
```

---

## Expected Output

If the user enters:

```text
H
```

Output:

| ENAME |
|--------|
| HARRIS |

> **Note:** The output depends on the data available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME
  2  FROM EMP
  3  WHERE ENAME LIKE '&LETTER%';

Enter value for LETTER: H

ENAME
------
HARRIS
```

---

## Concepts Used

- SQL*Plus Variables
- LIKE Operator
- Wildcard (%)

---

## Learning Outcome

Learned how to accept user input using SQL*Plus substitution variables and retrieve dynamic results using the `LIKE` operator.
