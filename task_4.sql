-- Select detailed information about columns in the Books table
SELECT 
    COLUMN_NAME AS 'Column Name',
    DATA_TYPE AS 'Data Type',
    IS_NULLABLE AS 'Is Nullable',
    COLUMN_DEFAULT AS 'Default Value',
    CHARACTER_MAXIMUM_LENGTH AS 'Character Max Length',
    NUMERIC_PRECISION AS 'Numeric Precision',
    NUMERIC_SCALE AS 'Numeric Scale'
FROM 
    information_schema.COLUMNS
WHERE 
    TABLE_SCHEMA = DATABASE() AND
    TABLE_NAME = 'Books';
