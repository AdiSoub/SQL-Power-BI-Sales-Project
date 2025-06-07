
-- SQL Script to create and populate the Sales & Customer Analytics database

-- Drop tables if they exist
DROP TABLE IF EXISTS order_details, orders, customers, products, regions, payments, product_reviews, sales_reps;

-- Create tables
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    full_name TEXT,
    email TEXT,
    phone TEXT,
    country TEXT,
    registration_date DATE
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    unit_price NUMERIC,
    in_stock BOOLEAN
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    order_date TIMESTAMP,
    payment_method TEXT,
    order_status TEXT
);

CREATE TABLE order_details (
    order_detail_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT REFERENCES products(product_id),
    quantity INT,
    total_price NUMERIC
);

CREATE TABLE regions (
    region_id SERIAL PRIMARY KEY,
    region_name TEXT,
    country TEXT
);

CREATE TABLE payments (
    payment_id SERIAL PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    amount NUMERIC,
    payment_date TIMESTAMP
);

CREATE TABLE product_reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    customer_id INT REFERENCES customers(customer_id),
    rating INT,
    review_text TEXT,
    review_date DATE
);

CREATE TABLE sales_reps (
    rep_id SERIAL PRIMARY KEY,
    full_name TEXT,
    region_id INT REFERENCES regions(region_id),
    hire_date DATE
);

-- Insert sample data (small portion for preview)
INSERT INTO customers (full_name, email, phone, country, registration_date)
VALUES ('Ayman Khaled', 'ayman@email.com', '0791234567', 'Jordan', '2023-01-15');

INSERT INTO products (product_name, category, unit_price, in_stock)
VALUES ('Laptop X', 'Electronics', 1200.00, TRUE);

INSERT INTO orders (customer_id, order_date, payment_method, order_status)
VALUES (1, '2023-02-10 11:25:00', 'Credit Card', 'Completed');

INSERT INTO order_details (order_id, product_id, quantity, total_price)
VALUES (1, 1, 2, 2400.00);
