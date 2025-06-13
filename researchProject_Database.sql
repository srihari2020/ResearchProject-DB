CREATE DATABASE research_project_database;
use research_project_database;


CREATE TABLE Employee(
SSN INT NOT NULL PRIMARY KEY,
emp_name VARCHAR(250),
salary INT
);
CREATE TABLE Agency(
ID INT NOT NULL PRIMARY KEY,
agency_name VARCHAR(250),
address VARCHAR(250)
);
CREATE TABLE Project(
ID INT NOT NULL PRIMARY KEY,
project_name VARCHAR(250),
manager_id INT,
budget INT,
duration INT,
agency_id INT,
UNIQUE(id,agency_id),
FOREIGN KEY (manager_id) REFERENCES Employee(SSN),
FOREIGN KEY (agency_id) REFERENCES Agency(ID)
);
CREATE TABLE Employee_Project(
ID INT NOT NULL PRIMARY KEY,
employee_id INT,
project_id INT,
FOREIGN KEY (employee_id) REFERENCES Employee(SSN),
FOREIGN KEY (project_id) REFERENCES Project(ID)
);
INSERT INTO Employee (SSN, emp_name, salary) VALUES
(101, 'Alice Johnson', 80000),
(102, 'Bob Smith', 75000),
(103, 'Carol Lee', 72000),
(104, 'David Kim', 90000),
(105, 'Eve Patel', 68000);
INSERT INTO Agency (ID, agency_name, address) VALUES
(1, 'Space Research Org', '123 Galaxy Rd'),
(2, 'Marine Studies Center', '456 Ocean Ave'),
(3, 'Renewable Energy Board', '789 Solar Blvd');
INSERT INTO Project (ID, project_name, manager_id, budget, duration, agency_id) VALUES
(201, 'Lunar Rover Mission', 101, 5000000, 24, 1),
(202, 'Deep Sea Exploration', 102, 3000000, 18, 2),
(203, 'Wind Energy Mapping', 103, 2000000, 12, 3),
(204, 'AI Navigation System', 104, 1500000, 10, 1);
INSERT INTO Employee_Project (employee_id, project_id) VALUES
(101, 201),
(102, 202),
(103, 203),
(104, 204),
(105, 203),
(101, 204),
(103, 201);









