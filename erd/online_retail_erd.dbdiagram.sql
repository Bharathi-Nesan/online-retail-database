Table Customers {
  customer_id INT [pk, increment]
  name VARCHAR(100)
  email VARCHAR(100) [unique]
  phone VARCHAR(15)
  address TEXT
  created_at DATETIME
}

Table Categories {
  category_id INT [pk, increment]
  category_name VARCHAR(100)
  description TEXT
}

Table Products {
  product_id INT [pk, increment]
  name VARCHAR(100)
  description TEXT
  price DECIMAL(10,2)
  stock INT
  category_id INT [ref: > Categories.category_id]
}

Table Orders {
  order_id INT [pk, increment]
  customer_id INT [ref: > Customers.customer_id]
  order_date DATETIME
  status VARCHAR(50)
}

Table OrderDetails {
  order_detail_id INT [pk, increment]
  order_id INT [ref: > Orders.order_id]
  product_id INT [ref: > Products.product_id]
  quantity INT
  price DECIMAL(10,2)
}

Table Payments {
  payment_id INT [pk, increment]
  order_id INT [ref: > Orders.order_id]
  payment_date DATETIME
  payment_method VARCHAR(50)
  amount DECIMAL(10,2)
  status VARCHAR(50)
}

Table Shipping {
  shipping_id INT [pk, increment]
  order_id INT [ref: > Orders.order_id]
  shipping_address TEXT
  shipping_date DATETIME
  tracking_number VARCHAR(100)
  status VARCHAR(50)
}
