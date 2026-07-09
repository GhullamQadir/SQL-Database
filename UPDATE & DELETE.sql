-- UPDATE (ALWAYS use WHERE!)
UPDATE students
SET gpa = 3.60
WHERE student_id = 1;

-- Update multiple columns
UPDATE students
SET age = 23, gpa = 3.90
WHERE student_id = 2;

-- Update based on calculation
UPDATE students
SET gpa = gpa + 0.10
WHERE gpa < 3.0;

-- DELETE (ALWAYS use WHERE!)
DELETE FROM students WHERE student_id = 6;

-- Delete all rows (BE CAREFUL!)
DELETE FROM students;           -- Keeps table structure
TRUNCATE TABLE students;        -- Faster, resets auto-increment

-- Safe update mode (MySQL)
SET SQL_SAFE_UPDATES = 1;       -- Prevents UPDATE/DELETE without WHERE
