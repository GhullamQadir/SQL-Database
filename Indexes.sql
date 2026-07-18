-- Create index
CREATE INDEX idx_students_lastname ON students(last_name);

-- Composite index
CREATE INDEX idx_name ON students(last_name, first_name);

-- Unique index
CREATE UNIQUE INDEX idx_email ON students(email);

-- Drop index
DROP INDEX idx_students_lastname ON students;       -- MySQL
DROP INDEX idx_students_lastname;                     -- PostgreSQL

-- View query execution plan
EXPLAIN SELECT * FROM students WHERE last_name = 'Smith';  -- MySQL/PostgreSQL

-- When to index:
-- + Speeds up SELECT and WHERE
-- - Slows down INSERT, UPDATE, DELETE
-- Best for: columns in JOIN, WHERE, ORDER BY with large tables
