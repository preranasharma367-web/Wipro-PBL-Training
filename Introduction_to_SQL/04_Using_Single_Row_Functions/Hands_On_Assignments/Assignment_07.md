# Assignment 07 – Display Dream Salaries

## Objective

Learn how to concatenate strings with numeric values and display formatted text using Oracle SQL.

---

## Problem Statement

Create a report that produces the following message for each employee:

**"<Employee Name> earns <Salary> monthly but wants <3 × Salary>."**

Label the column **Dream Salaries**.

---

## SQL Query

```sql
SELECT ENAME || ' earns ' || SAL ||
       ' monthly but wants ' || (SAL * 3) AS "Dream Salaries"
FROM EMP;
```

---

## Explanation

- `||` is the concatenation operator used to combine strings.
- `SAL * 3` calculates three times the employee's current salary.
- The entire sentence is displayed under the column **Dream Salaries**.

---

## Oracle Features Used

### Concatenation Operator (`||`)

**Purpose**

Combines two or more strings into a single string.

**Syntax**

```sql
expression1 || expression2
```

---

## Expected Output

| Dream Salaries |
|----------------|
| SMITH earns 800 monthly but wants 2400 |
| ALLEN earns 1600 monthly but wants 4800 |
| WARD earns 1250 monthly but wants 3750 |
| ... |

> **Note:** The output depends on the records available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT ENAME || ' earns ' || SAL ||
  2         ' monthly but wants ' || (SAL * 3)
  3         AS "Dream Salaries"
  4  FROM EMP;

Dream Salaries
---------------------------------------------------------
SMITH earns 800 monthly but wants 2400
ALLEN earns 1600 monthly but wants 4800
WARD earns 1250 monthly but wants 3750
...
```

---

## Concepts Used

- Concatenation Operator (`||`)
- Arithmetic Expressions
- Column Alias

---

## Learning Outcome

Learned how to combine text and numeric values using the concatenation operator and arithmetic expressions to generate meaningful reports.
