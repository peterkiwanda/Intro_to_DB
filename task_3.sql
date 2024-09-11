-- Select all table names from the specified database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE();

-- Show all tables in the current database
SHOW TABLES;
