# Assignment 04 – Display Employee Name in Proper Case and Length

## Objective

Learn how to use Oracle character functions to format text and calculate the length of a string.

---

## Problem Statement

Write a query that displays the employee name with the first letter in uppercase and all remaining letters in lowercase, along with the length of the employee name, for employees whose names start with the letters **J**, **A**, or **M**.

Give each column an appropriate label.

Sort the results by employee name.

---

## SQL Query

```sql
SELECT INITCAP(ENAME) AS "Employee Name",
       LENGTH(ENAME) AS "Name Length"
FROM EMP
WHERE ENAME LIKE 'J%'
   OR ENAME LIKE 'A%'
   OR ENAME LIKE 'M%'
ORDER BY ENAME;
```

---

## Explanation

- `INITCAP(ENAME)` converts the first letter to uppercase and the remaining letters to lowercase.
- `LENGTH(ENAME)` returns the total number of characters in the employee name.
- `LIKE 'J%'`, `LIKE 'A%'`, and `LIKE 'M%'` filter employees whose names start with J, A, or M.
- `ORDER BY ENAME` sorts the results alphabetically.

---

## Oracle Functions Used

### INITCAP()

**Purpose**

Converts the first letter of each word to uppercase and the remaining letters to lowercase.

**Syntax**

```sql
INITCAP(column_name)
```

---

### LENGTH()

**Purpose**

Returns the number of characters in a string.

**Syntax**

```sql
LENGTH(column_name)
```

---

## Expected Output

| Employee Name | Name Length |
|---------------|------------:|
| Adams | 5 |
| Allen | 5 |
| James | 5 |
| Martin | 6 |
| Miller | 6 |

> **Note:** The actual output depends on the records available in the EMP table.

---

## SQL*Plus Output

```text
SQL> SELECT INITCAP(ENAME) AS "Employee Name",
  2         LENGTH(ENAME) AS "Name Length"
  3  FROM EMP
  4  WHERE ENAME LIKE 'J%'
  5     OR ENAME LIKE 'A%'
  6     OR ENAME LIKE 'M%'
  7  ORDER BY ENAME;

Employee Name     Name Length
----------------  -----------
Adams                      5
Allen                      5
James                      5
Martin                     6
Miller                     6
```

---

## Concepts Used

- Character Functions
- INITCAP()
- LENGTH()
- LIKE Operator
- ORDER BY Clause

---

## Learning Outcome

Learned how to format text using `INITCAP()`, determine string length using `LENGTH()`, filter rows using the `LIKE` operator, and sort results using `ORDER BY`.
