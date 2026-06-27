# Hands-on Assignment 2

## Topic
Normalization

---

## Objective

To identify the current normal form of the given STUDENT table and determine whether it can be further normalized.

---

## Given Table

| ROLLNO | NAME | AGE | EXAM | MARKS | GRADE |
|--------|------|-----|------|-------|-------|
| 101 | Rahul | 20 | DBMS | 90 | A |
| 102 | Priya | 19 | SQL | 85 | B |
| 103 | Amit | 21 | Oracle | 92 | A |

---

## Analysis

The table stores student information along with examination details.

Assuming:
- **ROLLNO** uniquely identifies each student.
- **GRADE** is determined by **MARKS**.

Functional Dependency:

```
MARKS → GRADE
```

This creates a **Transitive Dependency** because:

```
ROLLNO → MARKS → GRADE
```

---

## Current Normal Form

The table is in **Second Normal Form (2NF)** because:

- All attributes contain atomic values (1NF).
- There are no partial dependencies.

However, it is **not in Third Normal Form (3NF)** because **GRADE** depends on **MARKS**, not directly on **ROLLNO**.

---

## Conversion to Third Normal Form (3NF)

### STUDENT Table

| ROLLNO | NAME | AGE | EXAM | MARKS |
|--------|------|-----|------|-------|
| 101 | Rahul | 20 | DBMS | 90 |
| 102 | Priya | 19 | SQL | 85 |
| 103 | Amit | 21 | Oracle | 92 |

### GRADE Table

| MARKS | GRADE |
|-------|-------|
| 90 | A |
| 85 | B |
| 92 | A |

---

## Conclusion

The transitive dependency has been removed by separating grade information into a different table. The resulting tables satisfy **Third Normal Form (3NF)**.
