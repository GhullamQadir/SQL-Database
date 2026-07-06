-- Comparison operators: =, <>, !=, <, >, <=, >=
SELECT * FROM students WHERE gpa > 3.0;
SELECT * FROM students WHERE age <> 20;

-- Logical operators: AND, OR, NOT
SELECT * FROM students WHERE gpa > 3.0 AND age < 22;
SELECT * FROM students WHERE age = 19 OR age = 21;
SELECT * FROM students WHERE NOT age = 20;

-- IN operator
SELECT * FROM students WHERE age IN (19, 20, 21);

-- BETWEEN (inclusive)
SELECT * FROM students WHERE gpa BETWEEN 3.0 AND 3.8;

-- LIKE (pattern matching)
SELECT * FROM students WHERE first_name LIKE 'J%';      -- Starts with J
SELECT * FROM students WHERE email LIKE '%@email.com';  -- Ends with @email.com
SELECT * FROM students WHERE first_name LIKE '_a%';     -- 2nd letter is a
SELECT * FROM students WHERE first_name NOT LIKE 'J%';

-- IS NULL / IS NOT NULL
SELECT * FROM students WHERE gpa IS NULL;
SELECT * FROM students WHERE email IS NOT NULL;
