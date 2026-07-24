-- MySQL Stored Procedure
DELIMITER //

CREATE PROCEDURE GetStudentById(IN sid INT)
BEGIN
    SELECT * FROM students WHERE student_id = sid;
END //

DELIMITER ;

-- Call procedure
CALL GetStudentById(1);

-- With OUT parameter
DELIMITER //
CREATE PROCEDURE GetStudentCount(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM students;
END //
DELIMITER ;

CALL GetStudentCount(@total);
SELECT @total;

-- PostgreSQL Function
CREATE OR REPLACE FUNCTION get_honor_students()
RETURNS TABLE(student_id INT, first_name VARCHAR, gpa DECIMAL) AS $$
BEGIN
    RETURN QUERY
    SELECT s.student_id, s.first_name, s.gpa
    FROM students s
    WHERE s.gpa >= 3.5;
END;
$$ LANGUAGE plpgsql;

-- SQL Server Stored Procedure
CREATE PROCEDURE GetTopStudents @MinGPA DECIMAL(3,2)
AS
BEGIN
    SELECT * FROM students WHERE gpa >= @MinGPA;
END;

EXEC GetTopStudents @MinGPA = 3.5;
