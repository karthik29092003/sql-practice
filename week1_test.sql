-- Week 1 | Day 1
-- Concept: GROUP BY + JOIN + ORDER BY
-- Top 5 customers by total orders

SELECT
    c.company_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.company_name
ORDER BY total_orders DESC
LIMIT 5;