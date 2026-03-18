BEGIN;
-- Step 1: Backup current data
CREATE TABLE products_backup_18032026 AS
SELECT * FROM products;
-- Step 2: Apply new change
INSERT INTO products (product_name, is_active) 
VALUES ('TV', 'Y');
COMMIT;
