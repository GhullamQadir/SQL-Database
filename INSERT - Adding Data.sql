-- Insert single row
INSERT INTO students (student_id, first_name, last_name, email, age, gpa)
VALUES (31, 'Ghulam', 'Qadir', 'ghullamq916@gmail.com', 23, 2.71);

-- Insert multiple rows
INSERT INTO students (student_id, first_name, last_name, email, age, gpa)
VALUES 
    (32, 'Ali', 'Muhammad','alimuhammad@gmail.com', 20, 2.30),
    (47, 'Bilal', 'Ahmad', 'bilalahmad@gmail.com', 22, 1.88),
    (60, 'Yash', 'Raj', 'yashraj@gmail.com', 19, 3.11),
    (63, 'Hamid', 'Raza', 'hamidraza@gmail.com', 21, 2.61);

-- Insert specific columns (others use defaults)
INSERT INTO students (student_id, first_name, last_name)
VALUES (31, 'Ghulam', 'Qadir');

-- Insert from another table
INSERT INTO students_backup
SELECT * FROM students WHERE gpa > 3.5;
