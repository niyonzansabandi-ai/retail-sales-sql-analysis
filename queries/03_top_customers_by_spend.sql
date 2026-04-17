SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    SUM(p.price) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 10;
