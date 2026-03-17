SELECT COUNT(*) AS inserted_products
FROM products
WHERE product_name IN (
'Smart Phone',
'Laptop',
'Monitor',
'Mouse'
);
