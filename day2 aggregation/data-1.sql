CREATE TABLE Students (
    Name VARCHAR(50),
    Email VARCHAR(50),
    ID INT primary key,
    Score FLOAT,
    Place varchar(100)
);
INSERT INTO Students (Name, Email, ID, Score, Place)
VALUES
    ('John Doe', 'johndoe@example.com', 1, 85.5, 'Delhi'),
    ('Jane Smith', 'janesmith@example.com', 2, 92.0, 'Mumbai'),
    ('Alex Johnson', 'alexjohnson@example.com', 3, 78.9, 'Bangalore'),
    ('Sarah Davis', 'sarahdavis@example.com', 4, 95.2, 'Delhi'),
    ('Michael Brown', 'michaelbrown@example.com', 5, 88.7, 'Mumbai'),
    ('Emily Wilson', 'emilywilson@example.com', 6, 91.3, 'Bangalore'),
    ('David Lee', 'davidlee@example.com', 7, 82.4, 'Delhi'),
    ('Olivia Taylor', 'oliviataylor@example.com', 8, 79.1, 'Mumbai'),
    ('William Martinez', 'williammartinez@example.com', 9, 87.6, 'Bangalore'),
    ('Sophia Anderson', 'sophiaanderson@example.com', 10, 93.8, 'Delhi');