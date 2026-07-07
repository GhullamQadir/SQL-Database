-- COUNT
SELECT COUNT(*) FROM students;                   -- Total rows
SELECT COUNT(gpa) FROM students;                 -- Non-null GPAs
SELECT COUNT(DISTINCT age) FROM students;        -- Unique ages

-- SUM, AVG, MIN, MAX
SELECT SUM(gpa) FROM students;
SELECT AVG(gpa) AS average_gpa FROM students;
SELECT MIN(gpa) AS lowest_gpa, MAX(gpa) AS highest_gpa FROM students;

-- Combined with WHERE
SELECT AVG(gpa) FROM students WHERE age > 20;
