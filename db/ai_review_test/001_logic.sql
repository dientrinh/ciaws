
SELECT o.order_id, c.customer_name
FROM orders o
JOIN customers c ON o.customer_id = o.customer_id;

UPDATE orders
SET status = 'COMPLETED';

SELECT customer_id, COUNT(order_id), order_date
FROM orders
GROUP BY customer_id;

SELECT COUNT(discount_code) AS total_discounts
FROM orders;

SELECT *
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31 00:00:00';

SELECT *
FROM users
WHERE is_active = 'Y' OR 'N';
