-- Shipping status and tracking per order
SELECT 
    o.order_id,
    c.customer_name,
    s.shipping_address,
    s.shipped_date,
    s.delivery_date,
    s.shipping_status
FROM Shipping s
JOIN Orders o ON s.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
ORDER BY s.shipped_date DESC;
