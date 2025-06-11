-- Students
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Courses
CREATE TABLE courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

-- Enrollments
CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

-- Insert Data
INSERT INTO students (name) VALUES ('Anu'), ('Ben'), ('Clara');
INSERT INTO courses (title) VALUES ('PHP'), ('MySQL'), ('Laravel');
INSERT INTO enrollments VALUES (1,1), (1,2), (2,2), (2,3), (3,3);

-- Queries
SELECT s.name FROM students s JOIN enrollments e ON s.id = e.student_id WHERE e.course_id = 2;
SELECT c.title FROM courses c JOIN enrollments e ON c.id = e.course_id WHERE e.student_id = 1;
SELECT c.title, COUNT(e.student_id) FROM courses c LEFT JOIN enrollments e ON c.id = e.course_id GROUP BY c.id;
SELECT s.name FROM students s JOIN enrollments e ON s.id = e.student_id GROUP BY s.id HAVING COUNT(e.course_id) > 1;
SELECT c.title FROM courses c LEFT JOIN enrollments e ON c.id = e.course_id WHERE e.student_id IS NULL;
