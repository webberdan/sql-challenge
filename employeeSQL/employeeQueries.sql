--List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT employees_2.employeenum, employees_2.lastName, employees_2.firstName, employees_2.sex, salaries_6.salary
FROM employees_2
INNER JOIN salaries_6 ON employees_2.employeeNum = salaries_6.employeeNum;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT employees_2.firstName, employees_2.lastName, employees_2.hiredate
FROM employees_2
WHERE hiredate BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT department_3.deptnum, department_3.deptname, department_manager_4.employeenum, employees_2.lastname, employees_2.firstname
FROM department_manager_4
INNER JOIN department_3 ON department_manager_4.deptnum = department_3.deptnum
INNER JOIN employees_2 ON department_manager_4.employeenum = employees_2.employeenum;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employees_2.employeenum, employees_2.firstName, employees_2.lastName, department_3.deptname
FROM department_employee_5
JOIN department_3 ON department_employee_5.deptnum = department_3.deptnum
JOIN employees_2 ON department_employee_5.employeenum = employees_2.employeenum;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees_2.firstName, employees_2.lastName, employees_2.sex 
FROM employees_2
WHERE firstname = 'Hercules' and lastname LIKE '%B%'; 

--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT department_employee_5.employeenum, employees_2.lastName, employees_2.firstName, department_3.deptname
FROM department_employee_5
JOIN department_3 ON department_employee_5.deptnum = department_3.deptnum
JOIN employees_2 ON department_employee_5.employeenum = employees_2.employeenum
WHERE deptname = 'Sales';

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT department_employee_5.employeenum, employees_2.lastName, employees_2.firstName, department_3.deptname
FROM department_employee_5
JOIN department_3 ON department_employee_5.deptnum = department_3.deptnum
JOIN employees_2 ON department_employee_5.employeenum = employees_2.employeenum
WHERE deptname IN('Sales', 'Development');

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order
SELECT employees_2.lastname, COUNT(employees_2.lastName) 
FROM employees_2 
GROUP BY lastName 
ORDER BY (COUNT(employees_2.lastName))DESC;
