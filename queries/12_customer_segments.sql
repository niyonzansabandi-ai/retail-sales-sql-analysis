WITH customer_spend AS (
    SELECT
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(p.price) AS total_spent
    FROM orders o
    JOIN customers c ON o.customer_id = c.customer_id
    JOIN products p ON o.product_id = p.product_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    first_name,
    last_name,
    total_spent,
    CASE
        WHEN total_spent >= 500 THEN 'High Value'
        WHEN total_spent BETWEEN 200 AND 499 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS segment
FROM customer_spend
ORDER BY total_spent DESC;
