# LearnHub - Online Course & Learning Management System

LearnHub is a DBMS case study based on an online course and learning management system.

The project uses PostgreSQL to manage students, instructors, courses, enrollments, and assessment scores. It also includes SQL queries and an `InstructorDashboard` view for analyzing course enrollment and student performance.

## Features

- Student management
- Instructor management
- Course management
- Course enrollment tracking
- Assessment and score tracking
- SQL queries using JOINs and subqueries
- Aggregate functions such as `COUNT()` and `AVG()`
- Database normalization up to 3NF
- `InstructorDashboard` database view
- Primary key and foreign key constraints

## Database Tables

The database contains the following tables:

- Student
- Instructor
- Course
- Enrollment
- Assessment

## Technologies Used

- PostgreSQL
- SQL
- Visual Studio Code
- PostgreSQL Extension for VS Code

## Project Structure

```text
LearnHub/
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_tables.sql
│   ├── 03_insert_data.sql
│   ├── 04_queries.sql
│   └── 05_view.sql
│
├── diagrams/
│   └── ER_Diagram
│
├── documentation/
│
└── README.md

How to Run
1. Install PostgreSQL.
2. Open the project in Visual Studio Code.
3. Run 01_create_database.sql.
4. Connect to the learnhub_db database.
5. Run 02_create_tables.sql.
6. Run 03_insert_data.sql.
7. Run the queries from 04_queries.sql.
8. Run 05_view.sql to create the InstructorDashboard view.
Dashboard View
The InstructorDashboard view combines course, enrollment, and assessment information to display:
- Instructor details
- Course details
- Enrollment count
- Average assessment score
To view the dashboard:
SELECT *
FROM InstructorDashboard
ORDER BY InstructorID, CourseID;

Author
Aditya Yadav
B.Tech Computer Science Engineering and AI
ITM Skills University
Semester III
Academic Project
Database Management Systems - SQL & NoSQL
Case Study: LearnHub - Online Course & Learning Management System