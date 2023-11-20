--1.List the employee number, last name, first name, sex, and salary of each employee

--Join employees table and salaries table
select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no
order by emp_no

--2.List the first name, last name, and hire date for the employees who were hired in 1986
select e.first_name,
	e.last_name,
	e.hire_date
from employees as e
where date_part('year', hire_date) = 1986

--3.List the manager of each department along with their department number, department name, employee number, last name, and first name
select dept_manager.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
from dept_manager
left join departments
on dept_manager.dept_no = departments.dept_no
left join employees
on dept_manager.emp_no = employees.emp_no

--4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name
select departments.dept_no,
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from departments
left join dept_emp
on dept_emp.dept_no = departments.dept_no
left join employees
on dept_emp.emp_no = employees.emp_no