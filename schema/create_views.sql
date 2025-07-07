<<<<<<< HEAD
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
=======
-- 📘 View: GPA per Semester
CREATE VIEW SemesterGPA AS
SELECT 
    s.student_id,
    s.name AS student_name,
    sem.semester_name,
    ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) AS gpa
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
JOIN Semesters sem ON g.semester_id = sem.semester_id
GROUP BY s.student_id, sem.semester_name;

-- 📘 View: CGPA across all semesters
CREATE VIEW StudentCGPA AS
SELECT 
    s.student_id,
    s.name AS student_name,
    ROUND(SUM(g.grade_point * c.credits) / SUM(c.credits), 2) AS cgpa
FROM Grades g
JOIN Students s ON g.student_id = s.student_id
JOIN Courses c ON g.course_id = c.course_id
GROUP BY s.student_id;

-- 📘 View: Rank List by CGPA
CREATE VIEW CGPARankList AS
SELECT 
    student_id,
    student_name,
    cgpa,
    RANK() OVER (ORDER BY cgpa DESC) AS rank_position
FROM StudentCGPA;

>>>>>>> 3000d8b (First commit)
