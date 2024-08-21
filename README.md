# sql-challenge
Module 9 Challenge Joe Almendarez

Employees Database Setup

This README outlines the steps taken to create and set up the employees database using PostgreSQL, including the creation of an Entity-Relationship Diagram (ERD) and importing data from CSV files.
The employees database was created to analyze employee-related data within an organization.

Database Design
ERD Diagram
The ERD diagram was created using the following tables and relationships:
•	Departments
o	dept_no (Primary Key)
o	dept_name
•	Titles
o	title_id (Primary Key)
o	title
•	Employees
o	emp_no (Primary Key)
o	emp_title_id (Foreign Key referencing Titles.title_id)
o	birth_date
o	first_name
o	last_name
o	sex
o	hire_date
•	Dept_emp
o	emp_no (Foreign Key referencing Employees.emp_no)
o	dept_no (Foreign Key referencing Departments.dept_no)
•	Dept_manager
o	dept_no (Foreign Key referencing Departments.dept_no)
o	emp_no (Foreign Key referencing Employees.emp_no)
•	Salaries
o	emp_no (Primary Key and Foreign Key referencing Employees.emp_no)
o	salary
Tables and Relationships
The database consists of six tables with the following relationships:
•	Departments has a one-to-many relationship with Dept_emp and Dept_manager through dept_no.
•	Titles has a one-to-many relationship with Employees through title_id.
•	Employees has a one-to-many relationship with Dept_emp and Dept_manager through emp_no, and a one-to-one relationship with Salaries through emp_no.
Database Creation
1.	Create the Database:
o	In PgAdmin, create a new database named employees.
Table Creation
2.	Create the Tables:
o	Using SQL in PgAdmin to create the tables:
3.	Import Data from CSV Files:
o	Using PgAdmin’s import tool to load data into each table from the corresponding CSV files.
Conclusion
The employees database is set up and populated with data. The ERD provides a visual overview of the database structure, and the tables are ready for queries and analysis. 
