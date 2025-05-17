-- Create table
CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(100)
);

-- Insert data
INSERT INTO customers (name, email) VALUES ("nrupul", "d@gmail.com");
INSERT INTO customers (name, email) VALUES ("Nupur", "dd@gmail.com");

-- Read all data
SELECT * FROM customers;

-- Read specific columns
SELECT name, email FROM customers;

-- Filtering exact match
SELECT name, email FROM customers WHERE name = "nrupul";

-- Filtering using LIKE
SELECT name, email FROM customers WHERE name LIKE "%nr%";
SELECT name, email FROM customers WHERE name LIKE "nr%";

-- Update data
UPDATE customers SET name = "John" WHERE id = 1;

-- Delete data
DELETE FROM customers WHERE id = 1;

-- Sorting
SELECT name, email FROM customers ORDER BY name ASC;
SELECT name, email FROM customers ORDER BY email DESC;
