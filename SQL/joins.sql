use user;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

INSERT INTO employees (employee_id, first_name, last_name, department_id)
VALUES 
(1, 'John', 'Doe', 101),
(2, 'Jane', 'Smith', 102),
(3, 'Emily', 'Jones', 103),
(4, 'Michael', 'Brown', 104),
(5, 'Sarah', 'Williams', 101);

select * from employees;


CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES 
(101, 'HR'),
(102, 'Finance'),
(103, 'IT'),
(104, 'Sales');


select* from employees;

alter table employees drop column department_id;  -- drop column 
drop table employees;   -- delete table

SELECT employees.employee_id, employees.first_name, employees.last_name, departments.department_name FROM employees
                  LEFT JOIN departments ON employees.department_id = departments.department_id; -- full query 

SELECT e.employee_id, e.first_name, e.last_name, d.department_name FROM employees as e LEFT JOIN departments as d
ON e.department_id = d.department_id;  -- shortcut query

 
select e.first_name, e.last_name from employees as e;

                  

