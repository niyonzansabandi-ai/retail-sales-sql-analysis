SELECT
    p.product_id,
    p.product_name,
    SUM(p.price) AS total_revenue,
    COUNT(o.order_id) AS units_sold
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC;
