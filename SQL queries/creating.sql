create database college;
use college;

CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    dob DATE,
    address TEXT
);

CREATE TABLE Courses (
    course_id VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    course_desc TEXT,
    credits INT NOT NULL
);

CREATE TABLE Enrollments (
    enrollment_id VARCHAR(20) PRIMARY KEY,
    student_id INT NOT NULL,
    course_id VARCHAR(20) NOT NULL,
    enrollment_date DATE NOT NULL,
    enroll_status ENUM('Active', 'Completed', 'Withdrawn') NOT NULL DEFAULT 'Active',
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

CREATE TABLE Subjects (
    subject_id VARCHAR(20) PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL,
    subject_desc TEXT,
    credits INT NOT NULL
);

CREATE TABLE Teachers (
    teacher_id VARCHAR(20) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    department_id VARCHAR(20),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Grades (
    grade_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id VARCHAR(20) NOT NULL,
    subject_id VARCHAR(20) NOT NULL,
    grade DECIMAL(4,2) NOT NULL,
    assessment_type VARCHAR(50) NOT NULL,
    grade_date DATE NOT NULL,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

CREATE TABLE CourseTimetable (
    timetable_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id VARCHAR(20) NOT NULL,
    teacher_id VARCHAR(20) NOT NULL,
    subject_id VARCHAR(20) NOT NULL,
    day_of_week ENUM('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday') NOT NULL,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    location VARCHAR(50) NOT NULL,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

CREATE TABLE Attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id VARCHAR(20) NOT NULL,
    timetable_id INT NOT NULL,
    attendance_date DATE NOT NULL,
    attendance_status ENUM('Present', 'Absent', 'Late') NOT NULL,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id),
    FOREIGN KEY (timetable_id) REFERENCES CourseTimetable(timetable_id)
);

CREATE TABLE Fees (
    trans_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id VARCHAR(20) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    trans_date DATE NOT NULL,
    payment_method ENUM('Cash', 'Credit Card', 'Bank Transfer') NOT NULL,
    fee_status ENUM('Paid', 'Pending', 'Overdue') NOT NULL,
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);

CREATE TABLE Departments (
    department_id VARCHAR(20) PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    department_head INT
);

CREATE TABLE CourseSubjects (
    course_id VARCHAR(20) NOT NULL,
    subject_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (course_id, subject_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

CREATE TABLE TeacherSubjects (
    teacher_id VARCHAR(20) NOT NULL,
    subject_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (teacher_id, subject_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

alter table coursetimetable add column period INT;
