-- Subquery in WHERE
SELECT * FROM students
WHERE gpa > (SELECT AVG(gpa) FROM students);

-- Subquery in FROM
SELECT dept_avg.dept_id, dept_avg.avg_sal
FROM (SELECT dept_id, AVG(salary) AS avg_sal FROM professors GROUP BY dept_id) AS dept_avg
WHERE dept_avg.avg_sal > 90000;

-- Subquery in SELECT
SELECT prof_name,
       (SELECT dept_name FROM departments d WHERE d.dept_id = p.dept_id) AS dept
FROM professors p;

-- EXISTS
SELECT * FROM departments d
WHERE EXISTS (SELECT 1 FROM professors p WHERE p.dept_id = d.dept_id);

-- NOT EXISTS
SELECT * FROM departments d
WHERE NOT EXISTS (SELECT 1 FROM professors p WHERE p.dept_id = d.dept_id);

-- IN with subquery
SELECT * FROM students
WHERE student_id IN (SELECT student_id FROM enrollments WHERE grade = 'A');

-- ALL / ANY
SELECT * FROM professors
WHERE salary > ALL (SELECT salary FROM professors WHERE dept_id = 2);
