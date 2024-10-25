# College Database Management System 🏫📖

A command-line based application for managing college data, including **student and teacher profiles, courses, attendance, grades, timetable**, and **fees**. This project utilizes **Go** and **MySQL** to interact with the database, providing CRUD functionality across different modules.

---

## Features

- **Student Management**:🧑‍🎓
  - View and update personal profile details.
  - View enrolled courses and subjects.
  - Track attendance, grades, timetable, and fee history.

- **Teacher Management**:🧑‍🏫
  - View and update personal profile details.
  - Access list of allotted subjects.
  - View enrolled students and manage their details.
  - Access personal timetable.

---
## Project Structure

- **main.go**: Core application code that handles user interaction and provides functionality for both students and teachers, including accessing, viewing, and modifying data in MySQL.
  
- **SQL queries/**: Directory containing SQL files for database schema setup, table creation, and other required queries.

- **ER Diagram.png**: Entity-Relationship diagram illustrating the database schema, showing relationships between tables like `Students`, `Teachers`, `Courses`, and `Subjects`.

- **go.mod** and **go.sum**: Go module files that manage dependencies and package versions required by the project.


## Prerequisites

- **Go** (latest version recommended)
- **MySQL** database with the tables: `Students`, `Teachers`, `Enrollments`, `Courses`, `Subjects`, `Grades`, `Attendance`, `CourseTimetable`, `Fees`.
- [Go-MySQL-Driver](https://github.com/go-sql-driver/mysql) for Go-MySQL connection.

