-- drop table if exists department;

create table departments (
	dept_no varchar(50) primary key,
	dept_name varchar(50) not null
);

create table titles (
	title_id varchar(50) primary key,
	titles varchar(50) not null
);

create table employees (
	emp_no INTEGER not NULL primary key,
	emp_title_id VARCHAR(50) not NULL, 
	foreign key (emp_title_id) references titles(title_id),
	birth_date VARCHAR(50) not NULL,
	first_name VARCHAR(50) not NULL,
	last_name VARCHAR(50) not NULL,
	sex VARCHAR(50) not NULL,
	hire_date VARCHAR(50) not NULL
);

create table dept_emp (
	emp_no integer not null,
	foreign key (emp_no) references employees (emp_no),
	dept_no varchar(50) not null,
	foreign key (dept_no) references departments (dept_no),
	primary key (emp_no,dept_no)
);

create table dept_manager (
	dept_no varchar(50) not null,
	foreign key (dept_no) references departments (dept_no),
	emp_no integer not null,
	foreign key (emp_no) references employees (emp_no),
	primary key (emp_no, dept_no)
	
);

create table salaries (
	emp_no integer not null,
	foreign key (emp_no) references employees (emp_no),
	salary integer not null,
	primary key (emp_no, salary)
);

