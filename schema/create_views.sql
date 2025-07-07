-- Order Summary View
CREATE VIEW OrderSummary AS
SELECT 
    o.order_id,
    c.name AS customer_name,
    p.name AS product_name,
    od.quantity,
    od.price,
    o.status AS order_status,
    o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id;

-- Payment Status View
CREATE VIEW PaymentStatus AS
SELECT 
    p.payment_id,
    o.order_id,
    c.name AS customer_name,
    p.amount,
    p.payment_method,
    p.status AS payment_status,
    p.payment_date
FROM Payments p
JOIN Orders o ON p.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id;

-- Shipping Status View
CREATE VIEW ShippingStatus AS
SELECT 
    s.shipping_id,
    o.order_id,
    c.name AS customer_name,
    s.tracking_number,
    s.status AS shipping_status,
    s.shipping_date
FROM Shipping s
JOIN Orders o ON s.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id;

-- Product Sales View
CREATE VIEW ProductSales AS
SELECT 
    p.name AS product_name,
    SUM(od.quantity) AS total_quantity_sold
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.name;
