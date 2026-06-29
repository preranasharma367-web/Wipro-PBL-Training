# Assignment 9

## Question

The HR department needs a report that displays the last name and hire date for all employees who were hired in **1981**.

---

## Objective

Retrieve the employee name and hire date for employees who joined the company during the year **1981**.

---

## SQL Query

```sql
SELECT ENAME,
       HIREDATE
FROM EMP
WHERE HIREDATE BETWEEN '01-JAN-81' AND '31-DEC-81';
```

---

## Query Explanation

| Clause | Description |
|---------|-------------|
| SELECT | Retrieves employee name and hire date |
| FROM | Reads data from the EMP table |
| WHERE | Filters the required records |
| BETWEEN | Selects employees hired during the year 1981 |

---

## Expected Output

| ENAME | HIREDATE |
|--------|-----------|
| ALLEN | 20-FEB-81 |
| WARD | 22-FEB-81 |
| JONES | 02-APR-81 |
| MARTIN | 28-SEP-81 |
| BLAKE | 01-MAY-81 |
| TURNER | 08-SEP-81 |
| KING | 17-NOV-81 |
| JAMES | 03-DEC-81 |
| FORD | 03-DEC-81 |

*(Output may vary depending on the EMP table.)*

---

## SQL*Plus Output

```text
SQL> SELECT ENAME,
  2         HIREDATE
  3  FROM EMP
  4  WHERE HIREDATE BETWEEN '01-JAN-81' AND '31-DEC-81';

ENAME      HIREDATE
---------  ---------
ALLEN      20-FEB-81
WARD       22-FEB-81
JONES      02-APR-81
MARTIN     28-SEP-81
BLAKE      01-MAY-81
TURNER     08-SEP-81
KING       17-NOV-81
JAMES      03-DEC-81
FORD       03-DEC-81
```

---

## Concepts Used

- SELECT
- WHERE
- BETWEEN
- Date Comparison

---

## Key Learning

- SQL can compare date values using the `BETWEEN` operator.
- Date filtering is commonly used in employee and business reports.

---

## Conclusion

This query retrieves the names and hire dates of all employees who joined the organization during **1981** using a date range filter.
