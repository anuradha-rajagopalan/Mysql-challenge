-- Employee & Manager Table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

-- Insert Employees
INSERT INTO employees (name, manager_id) VALUES
('Alice', NULL),
('Bob', 1),
('Charlie', 1),
('David', 2),
('Eva', 3);

-- Queries
-- 1. Employee + Manager
SELECT e.name AS Employee, m.name AS Manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;

-- 2. Employees under Alice
SELECT name FROM employees WHERE manager_id = 1;

-- 3. Count per manager
SELECT m.name AS Manager, COUNT(e.id) AS Reportees
FROM employees e
JOIN employees m ON e.manager_id = m.id
GROUP BY e.manager_id;

-- 4. Top-level managers
SELECT name FROM employees WHERE manager_id IS NULL;

-- 5. Hierarchy
SELECT m.name AS Manager, e.name AS Employee
FROM employees e
JOIN employees m ON e.manager_id = m.id
ORDER BY m.name;
