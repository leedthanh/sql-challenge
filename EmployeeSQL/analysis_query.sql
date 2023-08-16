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

-- List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name begins with the letter B 

select first_name,last_name, sex
from employees
where first_name like '%Hercules%'
and last_name like 'B%';

-- List each employee in the Sales department, including their employee number, 
-- last name, and first name

select d.dept_name, de.emp_no, e.last_name, e.first_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no
inner join employees as e
on e.emp_no = de.emp_no
where d.dept_name = 'Sales';

-- List each employee in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name 

select * from departments

select d.dept_name, de.emp_no, e.last_name, e.first_name
from dept_emp as de
inner join departments as d
on de.dept_no = d.dept_no
inner join employees as e
on e.emp_no = de.emp_no
where d.dept_name = 'Sales' or d.dept_name ='Development';

-- List the frequency counts, in descending order, of all the employee last names 
-- (that is, how many employees share each last name)

select last_name, count(last_name) as count
from employees
group by last_name
order by count DESC;