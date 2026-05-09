-- Q1: Display all employees
SELECT * FROM Employee;

-- Q2: Display employee names and salaries
SELECT name, salary FROM Employee;

-- Q3: Find employees older than 30
SELECT * FROM Employee WHERE age > 30;

-- Q4: Find employees who work in IT department
SELECT * FROM Employee WHERE department_id = 1;

-- Q5: Count total number of employees
SELECT COUNT(*) AS total_employees FROM Employee;

-- Q6: Find average salary of employees
SELECT AVG(salary) AS avg_salary FROM Employee;

-- Q7: Find highest salary
SELECT MAX(salary) AS highest_salary FROM Employee;

-- Q8: Sort employees by salary (descending)
SELECT * FROM Employee ORDER BY salary DESC;

-- Q9: Join Employee and Department (show employee name + department name)
SELECT e.name AS employee_name, d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- Q10: Find employees with no department
SELECT * FROM Employee WHERE department_id IS NULL;

-- Q11: Find employees whose name starts with 'J'
SELECT * FROM Employee WHERE name LIKE 'J%';

-- Q12: Find employees whose name contains 'a'
SELECT * FROM Employee WHERE name LIKE '%b%';

-- Q13: Find employees hired after 2020
SELECT * FROM Employee WHERE hire_date > '2020-01-01';

-- Q14: Find employees hired before 2019
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- Q15: Select the average salary of employees in each department.
SELECT department_id, AVG(salary) AS average_salary
FROM Employee
GROUP BY department_id;

-- Q16: Select the highest salary in each department.
SELECT department_id, MAX(salary) AS highest_salary
FROM Employee
GROUP BY department_id;

-- Q17: Select employees hired in the last 2 years.
SELECT * FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- Q18: Select the total salary of all employees.
SELECT SUM(salary) AS total_salary
FROM Employee;

-- Q19: Select the average salary of employees.
SELECT AVG(salary) AS average_salary
FROM Employee;

-- Q20: Select the minimum salary in the Employee table.
SELECT MIN(salary) AS minimum_salary
FROM Employee;

-- Q21: Select the number of employees in each department.
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id;

-- Q22: Select the total salary for each department.
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id;

-- Q23: Select the average age of employees in each department.
SELECT department_id, AVG(age) AS average_age
FROM Employee
GROUP BY department_id;

-- Q24: Select the number of employees hired in each year.
SELECT YEAR(hire_date) AS hire_year,
COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

-- Q25: Select the department with the highest average salary.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC
LIMIT 1;

-- Q26: Select departments with more than 2 employees.
SELECT department_id, COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q27: Select departments with an average salary greater than 55000.
SELECT department_id, AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;
