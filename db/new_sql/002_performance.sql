SELECT *
FROM transactions;

SELECT user_id, SUM(amount)
FROM transactions
GROUP BY user_id;

SELECT *
FROM orders
WHERE YEAR(created_at) = 2024;

SELECT *
FROM orders o, customers c;

SELECT u.user_id,
       (SELECT COUNT(*)
        FROM orders o
        WHERE o.user_id = u.user_id) AS order_count
FROM users u;

SELECT *
FROM products p
WHERE p.price > (SELECT AVG(price) FROM products)
   OR p.discount > (SELECT AVG(discount) FROM products);
