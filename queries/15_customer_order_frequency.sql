WITH ordered AS (
    SELECT
        customer_id,
        order_date,
        LAG(order_date) OVER (PARTITION BY customer_id ORDER BY order_date) AS previous_order
    FROM orders
)
SELECT
    customer_id,
    AVG(julianday(order_date) - julianday(previous_order)) AS avg_days_between_orders
FROM ordered
WHERE previous_order IS NOT NULL
GROUP BY customer_id
ORDER BY avg_days_between_orders;
