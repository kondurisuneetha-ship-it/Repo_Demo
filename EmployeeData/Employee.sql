-- Drop table if it already exists (syntax may vary by DB)
DROP TABLE IF EXISTS Employee;

-- Create Employee 
CREATE TABLE Employee (
    EmployeeID     INT PRIMARY KEY,          -- Unique ID for each employee
    FirstName      VARCHAR(50) NOT NULL,     -- Employee's first name
    LastName       VARCHAR(50) NOT NULL,     -- Employee's last name
    Email          VARCHAR(100) UNIQUE,      -- Unique email address
    PhoneNumber    VARCHAR(15),              -- Optional phone number
    HireDate       DATE NOT NULL,            -- Date of joining
    JobTitle       VARCHAR(50) NOT NULL,     -- Job designation
    Salary         DECIMAL(10, 2) CHECK (Salary >= 0), -- Salary must be non-negative
    Department     VARCHAR(50)               -- Department name
);

-- Insert sample employee records
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, JobTitle, Salary, Department)
VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '9876543210', '2020-01-15', 'Software Engineer', 65000.00, 'IT'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '9876543211', '2019-03-10', 'HR Manager', 72000.00, 'HR'),
(3, 'Michael', 'Brown', 'michael.brown@example.com', '9876543212', '2021-07-01', 'Data Analyst', 58000.00, 'Analytics'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '9876543213', '2018-11-20', 'Project Manager', 85000.00, 'Operations'),
(5, 'David', 'Wilson', 'david.wilson@example.com', '9876543214', '2022-05-05', 'Intern', 20000.00, 'IT');

-- Verify inserted data
SELECT * FROM Employee;