-- Library System
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

CREATE TABLE borrows (
    user_id INT,
    book_id INT,
    PRIMARY KEY (user_id, book_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Insert Data
INSERT INTO users (name) VALUES ('Ava'), ('Leo'), ('Mia');
INSERT INTO books (title) VALUES ('Book A'), ('Book B'), ('Book C'), ('Book D'), ('Book E');
INSERT INTO borrows VALUES (1,1), (1,2), (2,2), (2,3), (3,3), (3,4);

-- Queries
SELECT b.title FROM books b JOIN borrows br ON b.id = br.book_id WHERE br.user_id = 1;
SELECT u.name FROM users u JOIN borrows br ON u.id = br.user_id WHERE br.book_id = 2;
SELECT b.title FROM books b LEFT JOIN borrows br ON b.id = br.book_id WHERE br.user_id IS NULL;
SELECT u.name, COUNT(br.book_id) FROM users u LEFT JOIN borrows br ON u.id = br.user_id GROUP BY u.id;
SELECT u.name, COUNT(br.book_id) FROM users u JOIN borrows br ON u.id = br.user_id GROUP BY u.id ORDER BY COUNT(br.book_id) DESC LIMIT 1;
