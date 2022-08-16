# sql-challenge

## Background
It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.
In this assignment, you will design the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. In other words, you will perform data modeling, data engineering, and data analysis.

## Step One- Data Discovery
The data consists of six unique csv files of employee data. The main goal in discovery is to review column headers to determine best primary and foreign keys. A secondary goal was to determine best fit for data types (INT, STRINGS, etc). During discovery it was observed that  `employeenum` would be a valuable primary key, along with 

## Step Two- Create Database Diagram
Using <https://app.quickdatabasediagrams.com/> the database was modeled to establish inter-dependancies. 

## Step Three- Create the Databse and Table Schemata
Next the SQL database was built in `pgAdmin` using `PostgresSQL` and the `employeeschemata` file was built. Then the csv files were imported into their respective tables.

## Step Four- SQL Queries
The following queries were performed in the `employeeQueries` file:
1- List the following details of each employee: employee number, last name, first name, sex, and salary.

2-List first name, last name, and hire date for employees who were hired in 1986.

3-List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4-List the department of each employee with the following information: employee number, last name, first name, and department name.

5-List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6-List all employees in the Sales department, including their employee number, last name, first name, and department name.

7-List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8-List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Step Five- Bonus Using Pandas and Plotting For Addtional Analysis
By using `SQLalchemy` the database was read into a Jupyter Notebook. From there the employees table, tiels table, and salaries table were imported into the session. After merging the data, two tables were created to further analyze the data to determine any trends: "Average Salary by Title", and "Common Salary Ranges for Employees". 

## Findings
The most common salary range was $40,000-$50,000
Senior Staff had the highest average salary with: $	58550.17
