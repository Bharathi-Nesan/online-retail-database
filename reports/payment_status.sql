-- Payment status report per order
SELECT 
    o.order_id,
    c.customer_name,
    o.order_date,
    p.payment_method,
    p.payment_status,
    p.payment_date,
    o.total_amount
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
ORDER BY p.payment_date DESC;
