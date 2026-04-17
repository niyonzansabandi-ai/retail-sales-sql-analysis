SELECT
    strftime('%Y', o.order_date) AS year,
    SUM(p.price) AS revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY year
ORDER BY year;
