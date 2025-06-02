-- Create the Departments table
CREATE TABLE Departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

-- Insert data into the Departments table
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Finance');

-- Create the Employees table
CREATE TABLE Employees (
  employee_id INT PRIMARY KEY,
  name VARCHAR(50),
  salary DECIMAL(10, 2),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert data into the Employees table
INSERT INTO Employees (employee_id, name, salary, department_id) VALUES
(1, 'John Smith', 50000.00, 1),
(2, 'Jane Johnson', 60000.00, 1),
(3, 'Michael Davis', 55000.00, 2),
(4, 'Emily Wilson', 62000.00, 2),
(5, 'David Brown', 70000.00, 3),
(6, 'Jennifer Lee', 48000.00, 3),
(7, 'Andrew Thompson', 53000.00, 3),
(8, 'Jessica Taylor', 58000.00, 1);