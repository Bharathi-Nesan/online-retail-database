-- Total units sold and revenue per product
SELECT 
    p.product_id,
    p.product_name,
    cat.category_name,
    SUM(oi.quantity) AS total_units_sold,
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM OrderItems oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY p.product_id
ORDER BY total_revenue DESC;

