# Hands-on Assignment 3

## Topic
Normalization

---

## Objective

To identify the normalization issues in the given EMPLOYEE-PROJECT table and eliminate data redundancy by applying normalization.

---

## Given Table

| EMPNO | PROJECT_NO | NO_OF_DAYS | CUSTOMERNAME |
|--------|------------|------------|--------------|
| 101 | P101 | 30 | ABC Ltd |
| 101 | P102 | 20 | XYZ Ltd |
| 102 | P101 | 15 | ABC Ltd |

**Composite Primary Key:** (EMPNO, PROJECT_NO)

---

## Analysis

The table stores employee project details.

Functional Dependency:

```
PROJECT_NO → CUSTOMERNAME
```

This means the **Customer Name** depends only on **PROJECT_NO** and not on the complete composite key.

This creates a **Partial Dependency**, which violates the rules of **Second Normal Form (2NF)**.

---

## Solution

Split the table into two tables.

### EMPLOYEE_PROJECT Table

| EMPNO | PROJECT_NO | NO_OF_DAYS |
|--------|------------|------------|
| 101 | P101 | 30 |
| 101 | P102 | 20 |
| 102 | P101 | 15 |

### PROJECT Table

| PROJECT_NO | CUSTOMERNAME |
|------------|--------------|
| P101 | ABC Ltd |
| P102 | XYZ Ltd |

---

## Result

The partial dependency has been removed by separating project information into a different table. The database now satisfies **Second Normal Form (2NF)**.

---

## Conclusion

Normalization reduces redundancy, improves consistency, and makes the database easier to maintain.
