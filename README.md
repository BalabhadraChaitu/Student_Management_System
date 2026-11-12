
# Student Management System using MySQL

## Project Overview

The **Student Management System** is a MySQL-based database project designed to manage student details, departments, faculty, courses, enrollments, examinations, and marks. It demonstrates relational database design and practical SQL concepts for organizing and managing academic records.

## Project Objectives

- Design and implement a relational student database using MySQL.
- Store and manage student, department, faculty, and course information.
- Maintain relationships between tables using primary and foreign keys.
- Manage course enrollments, examinations, and student marks.
- Perform data retrieval and manipulation using SQL queries.
- Generate useful academic reports and summaries.
- Demonstrate SQL concepts such as joins, subqueries, views, and transactions.

## Technologies Used

- **Database:** MySQL
- **Query Language:** SQL
- **Database Tool:** MySQL Workbench

## Database Design

The database contains seven main tables:

| Table | Purpose |
|---|---|
| `Departments` | Stores department details and department information. |
| `Students` | Stores student details and links students to their departments. |
| `Faculty` | Stores faculty details and department-related information. |
| `Courses` | Stores course details and their associated department or faculty information. |
| `Enrollments` | Maintains the relationship between students and the courses in which they enroll. |
| `Exams` | Stores examination details associated with courses. |
| `Marks` | Stores students' marks for the respective examinations. |

## Entity Relationship (ER) Diagram

The ER diagram represents the relationships between the seven tables in the Student Management System.

**Insert your ER diagram below:**

![Student Management System ER Diagram]("C:\Users\bchai\OneDrive\Pictures\Screenshots\Screenshot 2026-11-11 125753.png")

<!-- Example: ![Student Management System ER Diagram](er-diagram.png) -->


## SQL Concepts Demonstrated

- Aggregate Functions
- Numeric Functions
- String Functions
- Date Functions
- Joins
- Subqueries
- Views
- Transactions (TCL)
- Stored Procedures
- Triggers
