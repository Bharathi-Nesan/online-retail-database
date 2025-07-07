-- Customers
INSERT INTO Customers (name, email, phone, address)
VALUES 
('Bharathi Nesan', 'bharathi@example.com', '9876543210', 'Chennai, India'),
('Riya Sharma', 'riya.sharma@example.com', '9876500000', 'Bangalore, India');

-- Categories
INSERT INTO Categories (category_name, description)
VALUES 
('Electronics', 'Devices and gadgets'),
('Clothing', 'Apparel and accessories');

-- Products
INSERT INTO Products (name, description, price, stock, category_id)
VALUES 
('Smartphone', '64GB, Android 12', 15000.00, 100, 1),
('T-Shirt', 'Cotton, Size M', 499.00, 200, 2);

-- Orders
INSERT INTO Orders (customer_id, status)
VALUES 
(1, 'Processing'),
(2, 'Delivered');

-- OrderDetails
INSERT INTO OrderDetails (order_id, product_id, quantity, price)
VALUES 
(1, 1, 1, 15000.00),
(2, 2, 2, 998.00);

-- Payments
INSERT INTO Payments (order_id, payment_method, amount, status)
VALUES 
(1, 'Credit Card', 15000.00, 'Paid'),
(2, 'UPI', 998.00, 'Paid');

-- Shipping
INSERT INTO Shipping (order_id, shipping_address, shipping_date, tracking_number, status)
VALUES 
(1, 'Chennai, India', '2025-07-01 14:00:00', 'TRK123456', 'Shipped'),
(2, 'Bangalore, India', '2025-07-02 10:00:00', 'TRK123789', 'Delivered');
