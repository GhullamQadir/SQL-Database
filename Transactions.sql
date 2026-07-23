-- ACID: Atomicity, Consistency, Isolation, Durability

START TRANSACTION;          -- MySQL / Standard
-- BEGIN;                  -- PostgreSQL

UPDATE accounts SET balance = balance - 100 WHERE account_id = 1;
UPDATE accounts SET balance = balance + 100 WHERE account_id = 2;

-- Check if everything is OK
COMMIT;                     -- Save changes

-- If something went wrong
ROLLBACK;                   -- Undo all changes

-- Savepoints
START TRANSACTION;
UPDATE accounts SET balance = balance - 50 WHERE account_id = 1;
SAVEPOINT sp1;
UPDATE accounts SET balance = balance + 50 WHERE account_id = 2;
-- Oops, wrong account!
ROLLBACK TO sp1;
COMMIT;

-- Isolation Levels
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE
