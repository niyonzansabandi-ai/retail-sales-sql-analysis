SELECT 
    strftime('%Y-%m', o.order_date) AS month,
    SUM(p.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;
