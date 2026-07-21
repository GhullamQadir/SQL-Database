-- ROW_NUMBER
SELECT first_name, gpa,
       ROW_NUMBER() OVER (ORDER BY gpa DESC) AS rank_num
FROM students;

-- RANK and DENSE_RANK
SELECT first_name, gpa,
       RANK() OVER (ORDER BY gpa DESC) AS rank_with_gaps,
       DENSE_RANK() OVER (ORDER BY gpa DESC) AS dense_rank
FROM students;

-- PARTITION BY
SELECT first_name, age, gpa,
       RANK() OVER (PARTITION BY age ORDER BY gpa DESC) AS age_rank
FROM students;

-- LAG / LEAD
SELECT first_name, gpa,
       LAG(gpa, 1) OVER (ORDER BY gpa) AS prev_gpa,
       LEAD(gpa, 1) OVER (ORDER BY gpa) AS next_gpa
FROM students;

-- FIRST_VALUE / LAST_VALUE
SELECT first_name, gpa,
       FIRST_VALUE(first_name) OVER (ORDER BY gpa DESC) AS top_student
FROM students;

-- Running totals
SELECT first_name, gpa,
       SUM(gpa) OVER (ORDER BY student_id) AS running_total
FROM students;

-- NTILE (quartiles, percentiles)
SELECT first_name, gpa,
       NTILE(4) OVER (ORDER BY gpa DESC) AS quartile
FROM students;
