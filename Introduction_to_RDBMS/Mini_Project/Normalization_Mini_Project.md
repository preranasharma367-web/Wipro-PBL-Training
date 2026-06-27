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
