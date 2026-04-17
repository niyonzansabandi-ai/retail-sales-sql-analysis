SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    MIN(o.order_date) AS first_order,
    MAX(o.order_date) AS last_order
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY first_order;
