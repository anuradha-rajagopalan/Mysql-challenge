-- Customers & Orders
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Insert Data
INSERT INTO customers (name) VALUES ('John'), ('Sara'), ('Mike');
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2024-06-01'), (1, '2024-06-05'),
(2, '2024-06-02'), (2, '2024-06-06'),
(3, '2024-06-07');

-- Queries
SELECT * FROM orders WHERE customer_id = 1;
SELECT c.name, COUNT(o.id) FROM customers c JOIN orders o ON c.id = o.customer_id GROUP BY c.id HAVING COUNT(o.id) > 1;
SELECT c.name, COUNT(o.id) FROM customers c LEFT JOIN orders o ON c.id = o.customer_id GROUP BY c.id;
SELECT c.name FROM customers c LEFT JOIN orders o ON c.id = o.customer_id WHERE o.id IS NULL;
SELECT c.name, MAX(o.order_date) FROM customers c JOIN orders o ON c.id = o.customer_id GROUP BY c.name;
