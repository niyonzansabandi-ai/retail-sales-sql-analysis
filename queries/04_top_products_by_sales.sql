SELECT 
    p.product_id,
    p.product_name,
    COUNT(*) AS total_sales
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_sales DESC
LIMIT 10;
