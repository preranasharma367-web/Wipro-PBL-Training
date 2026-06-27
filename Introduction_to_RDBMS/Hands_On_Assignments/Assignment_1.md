# Hands-on Assignment 1

## Topic
Normalization

---

## Given Table Structure

EMPLOYEE (EMPNO, ENAME, SAL, DEPTNO, DNAME, LOC)

---

## Current Normal Form

The given table is in **Second Normal Form (2NF)**.

### Reason

- All attributes contain atomic values, so it satisfies **First Normal Form (1NF)**.
- The primary key is **EMPNO**, which is a single attribute, so there are no partial dependencies.
- However, **DNAME** and **LOC** depend on **DEPTNO**, not directly on **EMPNO**.

Functional Dependency:

```
EMPNO → DEPTNO
DEPTNO → DNAME, LOC
```

This creates a **Transitive Dependency**.

Therefore, the table is **not in Third Normal Form (3NF)**.

---

## Conversion to Third Normal Form (3NF)

The table should be divided into two tables.

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

## Benefits

- Removes data redundancy.
- Eliminates update anomalies.
- Improves data consistency.
- Makes the database easier to maintain.

---

## Conclusion

The given EMPLOYEE table is in **Second Normal Form (2NF)**. By separating the department details into a separate DEPARTMENT table, the transitive dependency is removed and the database is converted into **Third Normal Form (3NF)**.
