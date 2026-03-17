BEGIN;

-- Step 1: Backup current data
INSERT INTO products_backup (product_name, is_active)
SELECT product_name, is_active FROM products;

-- Step 2: Apply new change
INSERT INTO products (product_name, is_active) 
VALUES ('Monitor', 'Y');

COMMIT;

