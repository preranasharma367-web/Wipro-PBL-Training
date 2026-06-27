# Hands-on Assignment 1

## Topic
Normalization

---

## Objective

To identify the current normal form of the given EMPLOYEE table and convert it into the next normal form.

---

## Given Table

| EMPNO | ENAME | SAL | DEPTNO | DNAME | LOC |
|--------|-------|-----|--------|--------|-----|
| 101 | John | 50000 | 10 | HR | Delhi |
| 102 | Smith | 60000 | 20 | IT | Mumbai |
| 103 | David | 45000 | 10 | HR | Delhi |

---

## Analysis

The table contains employee details along with department information.

Here,

- **EMPNO** is the Primary Key.
- **DEPTNO** determines **DNAME** and **LOC**.

That means:

```
DEPTNO → DNAME, LOC
```

There is a **Transitive Dependency** because:

```
EMPNO → DEPTNO → DNAME, LOC
```

---

## Current Normal Form

The table is in **Second Normal Form (2NF)** because:

- All values are atomic (1NF satisfied).
- The primary key is a single attribute (EMPNO), so there are no partial dependencies.

However, it is **not in Third Normal Form (3NF)** due to the transitive dependency.

---

## Conversion to Third Normal Form (3NF)

Split the table into two tables.

### EMPLOYEE Table

| EMPNO | ENAME | SAL | DEPTNO |
|--------|-------|-----|--------|
| 101 | John | 50000 | 10 |
| 102 | Smith | 60000 | 20 |
| 103 | David | 45000 | 10 |

### DEPARTMENT Table

| DEPTNO | DNAME | LOC |
|--------|--------|------|
| 10 | HR | Delhi |
| 20 | IT | Mumbai |

---

## Conclusion

The transitive dependency has been removed by separating department information into a different table. The database is now in **Third Normal Form (3NF)**.
