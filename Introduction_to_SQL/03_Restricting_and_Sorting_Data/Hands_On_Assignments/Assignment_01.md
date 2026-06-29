# Assignment 1

## Question

Display the **ENAME**, **SAL**, and **COMM** from the **EMP** table for employees who earn commission. Sort the records in descending order of Salary and Commission. Use the column's numeric position in the `ORDER BY` clause.

---

## Objective

To retrieve the employee name, salary, and commission for employees who earn commission and display the results in descending order of salary and commission.

---

## SQL Query

```sql
SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
```

---

## Query Explanation

| Clause                    | Description                                                                                            |
| ------------------------- | ------------------------------------------------------------------------------------------------------ |
| `SELECT ENAME, SAL, COMM` | Retrieves the Employee Name, Salary, and Commission columns.                                           |
| `FROM EMP`                | Retrieves data from the EMP table.                                                                     |
| `WHERE COMM IS NOT NULL`  | Displays only employees who receive commission.                                                        |
| `ORDER BY 2 DESC, 3 DESC` | Sorts by Salary (2nd column) in descending order, then by Commission (3rd column) in descending order. |

---

## Expected Output

| ENAME  |  SAL | COMM |
| ------ | ---: | ---: |
| KING   | 5000 |    0 |
| BLAKE  | 2850 |    0 |
| ALLEN  | 1600 |  300 |
| TURNER | 1500 |    0 |
| MARTIN | 1250 | 1400 |
| WARD   | 1250 |  500 |

> **Note:** The exact output depends on the data in the EMP table. The output shown above is based on the standard Oracle SCOTT schema.

---

## Oracle SQL*Plus Output

```text
ENAME        SAL      COMM
--------   ------   ------
KING        5000        0
BLAKE       2850        0
ALLEN       1600      300
TURNER      1500        0
MARTIN      1250     1400
WARD        1250      500
```

---

## Concepts Used

* SELECT Statement
* WHERE Clause
* IS NOT NULL Operator
* ORDER BY Clause
* Descending Sorting

---

## Conclusion

This assignment demonstrates how to retrieve selected columns, filter records using the `WHERE` clause, and sort the results using the `ORDER BY` clause with numeric column positions.
