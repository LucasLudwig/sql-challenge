-- create a table for each of the csv files
create table titles (
    emp_title_id varchar (50) not null,
    title varchar(50) not null,
    primary key (emp_title_id)
);

create table departments (
    dept_no varchar(10) not null,
    dept_name varchar(40) not null,
    primary key (dept_no)
);

create table employees (
    emp_no int not null,
    emp_title_id varchar(50) not null,
    birth_date date not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex varchar(1) not null,
    hire_date date not null,
    primary key (emp_no),
    foreign key (emp_title_id) references titles (emp_title_id)
);

create table department_employees (
    emp_no int not null,
    dept_no varchar(10) not null,
    foreign key (emp_no) references employees (emp_no),
    foreign key (dept_no) references departments (dept_no)
);

create table dept_manager (
    dept_no varchar(10) not null,
    emp_no int not null,
    foreign key (dept_no) references departments (dept_no),
    foreign key (emp_no) references employees (emp_no)
);

create table salaries (
    emp_no int not null,
    salary int not null,
    foreign key (emp_no) references employees (emp_no)
);