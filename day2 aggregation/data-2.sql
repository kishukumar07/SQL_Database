REATE TABLE Courses (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO Courses (id, name)
VALUES
    (1, 'JS201'),
    (2, 'NXM301'),
    (3, 'RCT101');

select * from Courses;

CREATE TABLE Students (
  id int primary key,
  name varchar(100),
  email varchar(100),
  score float,
  place varchar(100),
  courseID int,
  FOREIGN KEY(courseID) REFERENCES Courses(id)
);
INSERT INTO Students (name, email, id, score, place, courseID)
VALUES
    ('John Doe', 'johndoe@example.com', 1, 85.5, 'Delhi', 1),
    ('Jane Smith', 'janesmith@example.com', 2, 92.0, 'Mumbai', 2),
    ('Alex Johnson', 'alexjohnson@example.com', 3, 78.9, 'Bangalore', 1),
    ('Sarah Davis', 'sarahdavis@example.com', 4, 95.2, 'Delhi', 1),
    ('Michael Brown', 'michaelbrown@example.com', 5, 88.7, 'Mumbai', 2),
    ('Emily Wilson', 'emilywilson@example.com', 6, 91.3, 'Bangalore', 1),
    ('David Lee', 'davidlee@example.com', 7, 82.4, 'Delhi', 2),
    ('Olivia Taylor', 'oliviataylor@example.com', 8, 79.1, 'Mumbai', 2),
    ('William Martinez', 'williammartinez@example.com', 9, 87.6, 'Bangalore', 1),
    ('Sophia Anderson', 'sophiaanderson@example.com', 10, 93.8, 'Delhi', 2);
    
    
INSERT INTO Students (name, email, id, score, place)
VALUES
("Shushant", "s@gmail.com", 11, 95,"Delhi");
