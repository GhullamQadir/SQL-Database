-- UNION (combines, removes duplicates)
SELECT first_name FROM students WHERE gpa > 3.5
UNION
SELECT prof_name FROM professors WHERE salary > 90000;

-- UNION ALL (combines, keeps duplicates)
SELECT first_name FROM students WHERE gpa > 3.0
UNION ALL
SELECT first_name FROM students WHERE age > 20;

-- INTERSECT (common rows) - PostgreSQL/SQL Server
SELECT dept_id FROM professors
INTERSECT
SELECT dept_id FROM courses;

-- EXCEPT / MINUS (rows in first not in second)
SELECT dept_id FROM departments
EXCEPT
SELECT dept_id FROM professors;
