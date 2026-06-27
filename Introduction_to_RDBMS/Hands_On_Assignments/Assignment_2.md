# Hands-on Assignment 2

## Topic
Normalization

---

## Given Table Structure

STUDENT (ROLLNO, NAME, AGE, EXAM, MARKS, GRADE)

---

## Current Normal Form

The given table is in **Second Normal Form (2NF)**.

### Reason

- All attributes contain atomic values, so the table satisfies **First Normal Form (1NF)**.
- The primary key is **ROLLNO**, which is a single attribute. Therefore, there are no partial dependencies.
- However, **GRADE** depends on **MARKS**, not directly on **ROLLNO**.

Functional Dependency:

```
ROLLNO → MARKS
MARKS → GRADE
```

This creates a **Transitive Dependency**.

Hence, the table is **not in Third Normal Form (3NF)**.

---

## Conversion to Third Normal Form (3NF)

The table can be divided into two tables.

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

## Benefits

- Removes data redundancy.
- Eliminates transitive dependency.
- Improves data consistency.
- Makes the database easier to maintain.

---

## Conclusion

The given STUDENT table is in **Second Normal Form (2NF)**. By separating the grade information into a separate table, the transitive dependency is removed and the database is converted into **Third Normal Form (3NF)**.
