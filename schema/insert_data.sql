<<<<<<< HEAD
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
=======
-- Insert Students
INSERT INTO Students (reg_no, name, dept, year) VALUES
('2023103589', 'Bharathi Nesan', 'CSE', 3),
('2023103590', 'Riya Sharma', 'IT', 3),
('2023103591', 'Arjun Raj', 'ECE', 3);

-- Insert Courses
INSERT INTO Courses (course_code, course_name, credits) VALUES
('CS301', 'Database Systems', 4),
('CS302', 'Operating Systems', 3),
('MA301', 'Discrete Math', 4);

-- Insert Semesters
INSERT INTO Semesters (semester_name, start_date, end_date) VALUES
('Sem 5', '2024-07-01', '2024-11-30'),
('Sem 6', '2025-01-05', '2025-05-31');

-- Insert Grades
-- Bharathi Nesan
INSERT INTO Grades (student_id, course_id, semester_id, grade_letter, grade_point) VALUES
(1, 1, 1, 'O', 10),
(1, 2, 1, 'A+', 9),
(1, 3, 1, 'A', 8);

-- Riya Sharma
INSERT INTO Grades (student_id, course_id, semester_id, grade_letter, grade_point) VALUES
(2, 1, 1, 'A+', 9),
(2, 2, 1, 'B+', 7),
(2, 3, 1, 'A', 8);

-- Arjun Raj
INSERT INTO Grades (student_id, course_id, semester_id, grade_letter, grade_point) VALUES
(3, 1, 1, 'B', 6),
(3, 2, 1, 'B+', 7),
(3, 3, 1, 'RA', 0);
>>>>>>> 3000d8b (First commit)
