-- 1. Create a database
CREATE DATABASE college_db;

-- 2. Select the database
USE college_db;

-- 3. Create a students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    course VARCHAR(50),
    city VARCHAR(50)
);

-- 4. Insert at least 5 student records
INSERT INTO students (name, age, course, city)
VALUES
('Murali', 21, 'BCA', 'Bengaluru'),
('Vinod', 22, 'BCA', 'Hosur'),
('Arun', 20, 'BCom', 'Chennai'),
('Priya', 23, 'BCA', 'Bengaluru'),
('Kumar', 19, 'BSc', 'Hosur');

-- 5. Display all student records
SELECT * FROM students;

-- 6. Display only student names and courses
SELECT name, course FROM students;

-- 7. Find students whose age is greater than 20
SELECT * FROM students WHERE age > 20;

-- 8. Find students who belong to Bengaluru
SELECT * FROM students WHERE city = 'Bengaluru';

-- 9. Display students studying BCA
SELECT * FROM students WHERE course = 'BCA';

-- 10. Display students in ascending order of age
SELECT * FROM students ORDER BY age ASC;

-- 11. Update one student's city
UPDATE students
SET city = 'Chennai'
WHERE student_id = 1;

-- 12. Count the total number of students
SELECT COUNT(*) AS total_students FROM students;

-- 13. Delete one student using student ID
DELETE FROM students WHERE student_id = 5;
