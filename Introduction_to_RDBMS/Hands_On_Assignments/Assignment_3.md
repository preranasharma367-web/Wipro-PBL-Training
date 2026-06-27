# Hands-on Assignment 3

## Topic
Normalization

---

## Given Table Structure

EMPLOYEE (EMPNO, PROJECT_NO, NO_OF_DAYS, CUSTOMERNAME)

**Composite Primary Key:** (EMPNO, PROJECT_NO)

---

## Problem Identification

The given table has a **Partial Dependency**.

### Reason

The primary key is a **Composite Key** consisting of:

```
(EMPNO, PROJECT_NO)
```

However,

```
PROJECT_NO → CUSTOMERNAME
```

This means **CUSTOMERNAME** depends only on **PROJECT_NO**, not on the complete composite key.

Therefore, the table violates **Second Normal Form (2NF)**.

---

## Current Normal Form

The table is in **First Normal Form (1NF)** because:

- All attributes contain atomic values.
- There are no repeating groups.

However, it is **not in Second Normal Form (2NF)** due to the partial dependency.

---

## Conversion to Second Normal Form (2NF)

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

## Benefits

- Removes partial dependency.
- Eliminates data redundancy.
- Improves data consistency.
- Makes database maintenance easier.

---

## Conclusion

The given table is in **First Normal Form (1NF)** but not in **Second Normal Form (2NF)** because of the partial dependency.

By separating the project details into a separate PROJECT table, the database is converted into **Second Normal Form (2NF)**.
