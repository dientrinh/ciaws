select o.order_id,o.customer_id,sum(o.amount) total from orders o join customers c on o.customer_id=c.customer_id group by o.order_id,o.customer_id;

SELECT a.id, b.name
FROM orders a
JOIN customers b ON a.customer_id = b.customer_id;

SELECT *
FROM (
    SELECT *
    FROM (
        SELECT *
        FROM orders
    ) t1
) t2;

SELECT user_id,
       (SELECT MAX(order_date) FROM orders WHERE user_id = u.user_id) AS last_order,
       (SELECT MIN(order_date) FROM orders WHERE user_id = u.user_id) AS first_order
FROM users u;

SeLeCt user_id, USER_NAME
FrOm USERS;

SELECT *
FROM orders
WHERE status = 'X1';
