CREATE DATABASE employee;
USE employee;
SHOW TABLES;
USE employee;
DESC departments;
DESC location;
DESC employees;
ALTER TABLE employees ADD COLUMN email VARCHAR(100);
ALTER TABLE employees CHANGE COLUMN hire_date date_of_joining DATE DEFAULT (CURRENT_DATE);
DESC employees;
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(255);
DESC employees;
ALTER TABLE employees DROP COLUMN age;
DESC employees;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
TRUNCATE TABLE employees;
DROP TABLE employees;
DROP DATABASE employee;
CREATE DATABASE employee;
USE employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);
SHOW TABLES;
CREATE TABLE Location (
    location_id INT,
    location VARCHAR(30)
);
SHOW TABLES;
DESC location;
DESC departments;
DESC employees;
USE employee;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    date_of_joining DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(255),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),
    email VARCHAR(100)
);
SHOW TABLES;
DESC employees;
ALTER TABLE location
MODIFY location_id INT NOT NULL AUTO_INCREMENT,
MODIFY location VARCHAR(30) NOT NULL,
ADD PRIMARY KEY (location_id),
ADD UNIQUE (location);
DESC employees;
SHOW CREATE TABLE employees;