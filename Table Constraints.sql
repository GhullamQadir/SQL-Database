CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT CHECK (credits > 0),
    dept_id INT,
    
    -- Foreign Key
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Add constraints to existing table
ALTER TABLE students
ADD CONSTRAINT chk_age CHECK (age >= 0 AND age <= 70);

-- Composite Primary Key
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    grade VARCHAR(2),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- UNIQUE constraint
ALTER TABLE students
ADD CONSTRAINT uq_email UNIQUE (email);
