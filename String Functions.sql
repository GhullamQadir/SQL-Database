-- Length
SELECT LENGTH(first_name), CHAR_LENGTH(first_name) FROM students;

-- Case conversion
SELECT UPPER(first_name), LOWER(email) FROM students;

-- Substring
SELECT SUBSTRING(first_name, 1, 3) FROM students;     -- First 3 chars
SELECT SUBSTR(first_name, 2, 2) FROM students;          -- From pos 2, length 2

-- Replace
SELECT REPLACE(email, '@email.com', '@university.edu') FROM students;

-- Trim
SELECT TRIM('  hello  ');               -- Removes spaces
SELECT TRIM(BOTH 'x' FROM 'xxxhelloxxx');

-- Position
SELECT POSITION('@' IN email) FROM students;
SELECT INSTR(email, '@') FROM students;  -- MySQL

-- Concatenation
SELECT CONCAT(first_name, ' ', last_name) FROM students;

-- LEFT / RIGHT
SELECT LEFT(first_name, 2), RIGHT(first_name, 2) FROM students;
