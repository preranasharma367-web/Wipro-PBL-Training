# Normalization Mini Project

## Module
Introduction to RDBMS

## Topic
Normalization

---

## Objective

The objective of this mini project is to understand the concepts of Database Normalization and convert database tables into First Normal Form (1NF), Second Normal Form (2NF), and Third Normal Form (3NF) to reduce data redundancy and improve data integrity.

---

## Introduction

Normalization is a database design technique used to organize data efficiently. It helps eliminate data redundancy, avoids insertion, update, and deletion anomalies, and ensures data consistency by dividing data into well-structured tables.

The three normal forms covered in this project are:
- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)

---

# Question 1
### Problem Statement

Normalize the following table into **First Normal Form (1NF)**.

### Original Table

| Member_ID | First_Name | Last_Name | Hobbies |
|-----------|------------|-----------|----------|
| 101 | Jayson | Mark | Cricket, Swimming, Football |
| 102 | Ram | Ganesh | Swimming, Running, Music |
| 103 | Raj | Kishore | Dancing, Singing, Running |

### Observation

The **Hobbies** column contains multiple values in a single cell. This violates the rule of **First Normal Form (1NF)**, which requires every attribute to contain only one atomic value.

### 1NF Solution

| Member_ID | First_Name | Last_Name | Hobby |
|-----------|------------|-----------|--------|
| 101 | Jayson | Mark | Cricket |
| 101 | Jayson | Mark | Swimming |
| 101 | Jayson | Mark | Football |
| 102 | Ram | Ganesh | Swimming |
| 102 | Ram | Ganesh | Running |
| 102 | Ram | Ganesh | Music |
| 103 | Raj | Kishore | Dancing |
| 103 | Raj | Kishore | Singing |
| 103 | Raj | Kishore | Running |

### Result

The table is now in **First Normal Form (1NF)** because each cell contains only a single value.

---

# Question 2

### Problem Statement

Normalize the following table into **Second Normal Form (2NF)**.

### Original Table

| EmpNo | Training | Training_Date | Dept |
|-------|----------|---------------|------|
| 101 | Oracle SQL | 12-Aug-2015 | TT |
| 101 | Java | 21-Aug-2015 | BU |
| 102 | Oracle SQL | 18-Sep-2014 | TT |

### Composite Primary Key

**(EmpNo, Training)**

### Observation

The attribute **Dept** depends only on **EmpNo** and not on the complete composite primary key **(EmpNo, Training)**.

This is called a **Partial Dependency**, which violates the rules of Second Normal Form (2NF).

### 2NF Solution

#### EMPLOYEE Table

| EmpNo | Dept |
|-------|------|
| 101 | TT |
| 102 | TT |

#### TRAINING Table

| EmpNo | Training | Training_Date |
|-------|----------|---------------|
| 101 | Oracle SQL | 12-Aug-2015 |
| 101 | Java | 21-Aug-2015 |
| 102 | Oracle SQL | 18-Sep-2014 |

### Result

The table is now in **Second Normal Form (2NF)** because the partial dependency has been removed by separating employee and training information into different tables.

---

# Question 3

### Problem Statement

Normalize the following table into **Third Normal Form (3NF)**.

### Original Table

| Member_ID | First_Name | Last_Name | Sports | Fees |
|-----------|------------|-----------|--------|------|
| 101 | Rajesh | Chand | Cricket | 100 |
| 102 | Jayesh | Raj | Hockey | 80 |
| 103 | Mark | Dorson | Football | 90 |

### Observation

The attribute **Fees** depends on **Sports** rather than directly on **Member_ID**.

This creates a **Transitive Dependency**, which violates the rules of Third Normal Form (3NF).

### 3NF Solution

#### MEMBER Table

| Member_ID | First_Name | Last_Name | Sports |
|-----------|------------|-----------|--------|
| 101 | Rajesh | Chand | Cricket |
| 102 | Jayesh | Raj | Hockey |
| 103 | Mark | Dorson | Football |

#### SPORTS Table

| Sports | Fees |
|--------|------|
| Cricket | 100 |
| Hockey | 80 |
| Football | 90 |

### Result

The table is now in **Third Normal Form (3NF)** because the transitive dependency has been removed by separating the Sports and Fees information.
