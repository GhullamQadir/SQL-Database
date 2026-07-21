-- Basic CTE
WITH dept_salaries AS (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM professors
    GROUP BY dept_id
)
SELECT d.dept_name, ds.avg_salary
FROM departments d
JOIN dept_salaries ds ON d.dept_id = ds.dept_id;

-- Multiple CTEs
WITH 
    high_gpa AS (
        SELECT * FROM students WHERE gpa > 3.5
    ),
    enrolled AS (
        SELECT DISTINCT student_id FROM enrollments
    )
SELECT h.first_name, h.gpa
FROM high_gpa h
JOIN enrolled e ON h.student_id = e.student_id;

-- Recursive CTE (hierarchical data)
WITH RECURSIVE subordinates AS (
    SELECT emp_id, emp_name, manager_id, 0 AS level
    FROM employees
    WHERE manager_id IS NULL
    
    UNION ALL
    
    SELECT e.emp_id, e.emp_name, e.manager_id, s.level + 1
    FROM employees e
    JOIN subordinates s ON e.manager_id = s.emp_id
)
SELECT * FROM subordinates;
