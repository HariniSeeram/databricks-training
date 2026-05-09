DROP TABLE IF EXISTS Employee;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT
);

INSERT INTO Employee VALUES
(101, 'Ravi', 'IT', 'Hyderabad', 85000, 5),
(102, 'Sneha', 'HR', 'Bangalore', 52000, 2),
(103, 'Vikram', 'Finance', 'Mumbai', 91000, 7),
(104, 'Anita', 'Sales', 'Chennai', 45000, 3),
(105, 'Ramesh', 'IT', 'Hyderabad', 76000, 4),
(106, 'Priya', 'Finance', 'Pune', 67000, 6),
(107, 'Kiran', 'HR', 'Mumbai', 48000, 2),
(108, 'Divya', 'Sales', 'Bangalore', 55000, 5),
(109, 'Varun', 'IT', 'Hyderabad', 92000, 8),
(110, 'Meena', 'Finance', 'Chennai', 61000, 4),
(111, 'Rohit', 'IT', 'Bangalore', 72000, 3),
(112, 'Pooja', 'HR', 'Hyderabad', 47000, 1);
