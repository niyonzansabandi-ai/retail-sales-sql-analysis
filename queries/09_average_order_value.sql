SELECT
    ROUND(SUM(p.price) * 1.0 / COUNT(o.order_id), 2) AS average_order_value
FROM orders o
JOIN products p ON o.product_id = p.product_id;
