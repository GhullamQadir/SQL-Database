-- Simple CASE
SELECT first_name, gpa,
    CASE 
        WHEN gpa >= 3.5 THEN 'Honors'
        WHEN gpa >= 3.0 THEN 'Good Standing'
        WHEN gpa >= 2.0 THEN 'Probation'
        ELSE 'Failing'
    END AS academic_status
FROM students;

-- CASE in aggregation
SELECT 
    COUNT(CASE WHEN gpa >= 3.5 THEN 1 END) AS honors_count,
    COUNT(CASE WHEN gpa < 2.0 THEN 1 END) AS failing_count
FROM students;

-- CASE in ORDER BY
SELECT * FROM students
ORDER BY 
    CASE WHEN age >= 21 THEN 0 ELSE 1 END,
    gpa DESC;
