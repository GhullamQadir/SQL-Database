-- Group by single column
SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age;

-- Group by with aggregates
SELECT age, AVG(gpa) AS avg_gpa, MAX(gpa) AS max_gpa
FROM students
GROUP BY age;

-- HAVING (filter groups)
SELECT age, AVG(gpa) AS avg_gpa
FROM students
GROUP BY age
HAVING AVG(gpa) > 3.0;

-- WHERE vs HAVING
SELECT age, AVG(gpa) AS avg_gpa
FROM students
WHERE enrollment_date > '2024-01-01'   -- Filter rows BEFORE grouping
GROUP BY age
HAVING COUNT(*) > 1;                    -- Filter groups AFTER grouping
