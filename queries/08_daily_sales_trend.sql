SELECT
    o.order_date,
    SUM(p.price) AS daily_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY o.order_date
ORDER BY o.order_date;
