-- Create view
CREATE VIEW honor_students AS
SELECT student_id, first_name, last_name, gpa
FROM students
WHERE gpa >= 3.5;

-- Query view
SELECT * FROM honor_students;

-- Create view with JOIN
CREATE VIEW student_course_view AS
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;

-- Updateable view (simple views only)
UPDATE honor_students SET gpa = 3.60 WHERE student_id = 1;

-- Drop view
DROP VIEW IF EXISTS honor_students;

-- With CHECK OPTION (prevents inserting rows that wouldn't appear in view)
CREATE VIEW active_students AS
SELECT * FROM students WHERE age < 25
WITH CHECK OPTION;
