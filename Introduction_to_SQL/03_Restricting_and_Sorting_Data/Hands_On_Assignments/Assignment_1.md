# Assignment 1

## Question

Display the ENAME, SAL, and COMM from the EMP table for employees who earn commission. Sort the records in descending order of Salary and Commission. Use the column's numeric position in the ORDER BY clause.

---

## Objective

Retrieve employees who receive commission and display the required columns sorted in descending order.

---

## SQL Query

```sql
SELECT ENAME, SAL, COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY 2 DESC, 3 DESC;
```

---

## Explanation

- Selects employee name, salary, and commission.
- Filters only employees having commission.
- Sorts first by Salary (column 2) in descending order.
- Then sorts by Commission (column 3) in descending order.

---

## Expected Output

Displays employees with commission ordered by highest salary and highest commission.

---

## Conclusion

The query demonstrates the use of the WHERE clause, IS NOT NULL condition, ORDER BY clause, and column positions for sorting.
