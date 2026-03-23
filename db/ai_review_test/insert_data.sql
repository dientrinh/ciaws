BEGIN;
-- Step 1: Backup current data
CREATE TABLES products_backup_16032026 AS
SELECT * FROM products;
-- Step 2: Apply new change
INSERT INTO products (product_name, is_active) 
VALUES ('Mouse', 'YRWWEW');
COMMIT;
