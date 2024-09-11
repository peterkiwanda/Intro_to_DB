-- Select all table names from the specified database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE();

-- Select the alx_book_store database
USE alx_book_store;

-- Show all tables in the selected database
SHOW TABLES;
