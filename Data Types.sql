-- Numeric
INT, INTEGER, BIGINT, SMALLINT    -- Whole numbers
DECIMAL(10,2), NUMERIC(10,2)      -- Exact decimal (total digits, decimal places)
FLOAT, REAL, DOUBLE PRECISION     -- Approximate decimals

-- String
CHAR(10)                          -- Fixed length
VARCHAR(255)                      -- Variable length
TEXT                              -- Large text (PostgreSQL/MySQL)

-- Date/Time
DATE                              -- YYYY-MM-DD
TIME                              -- HH:MM:SS
DATETIME, TIMESTAMP               -- Date + Time
INTERVAL                          -- Time duration

-- Boolean
BOOLEAN (TRUE/FALSE)              -- PostgreSQL, MySQL 8+
BIT, TINYINT(1)                   -- MySQL alternative

-- Binary
BLOB, BYTEA                       -- Images, files

-- Others
JSON, JSONB                       -- PostgreSQL
ARRAY                             -- PostgreSQL
ENUM                              -- MySQL, PostgreSQL
