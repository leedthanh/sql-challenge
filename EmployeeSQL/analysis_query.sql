--Analysis
--List the employee number, last name, first name, sex, and salary of each employee

Select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from employees as e
inner join salaries as s
on e.emp_no = s.emp_no;

-- List the first name, last name, and hire date 
-- for the employees who were hired in 1986

select first_name,last_name,hire_date
from employees
where hire_date like '%1986';

-- List the manager of each department along with their department number, 
-- department name, employee number, last name, and first name

select d.dept_no,d.dept_name,m.emp_no,e.last_name,e.first_name
from departments as d
inner join dept_manager as m
on d.dept_no = m.dept_no
inner join employees as e
on e.emp_no = m.emp_no;

-- List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name

select d.dept_no,dm.emp_no,e.last_name,e.first_name,d.dept_name
from dept_emp as dm 
inner join departments as d
on d.dept_no = dm.dept_no
inner join employees as e
on dm.emp_no = e.emp_no
