drop table employees
drop table depts
drop table dept_manager
drop table dept_emp
drop table salaries
drop table titles

CREATE TABLE employees (
    emp_no      INT         NOT NULL,
    birth_date  DATE        NOT NULL,
    first_name  VARCHAR     NOT NULL,
    last_name   VARCHAR     NOT NULL,
    gender      VARCHAR 	NOT NULL,
    hire_date   DATE        NOT NULL,
    PRIMARY KEY (emp_no)
);

select * from employees

CREATE TABLE depts (
    dept_no     VARCHAR    NOT NULL,
    dept_name   VARCHAR    NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE   	(dept_name)
);

select * from depts

CREATE TABLE dept_manager (
   dept_no      VARCHAR         NOT NULL,
   emp_no       INT             NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no),
   FOREIGN KEY (dept_no) REFERENCES depts (dept_no),
   PRIMARY KEY (emp_no,dept_no)
);

select * from dept_manager

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     VARCHAR         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no),
    FOREIGN KEY (dept_no) REFERENCES depts (dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

select * from dept_emp

CREATE TABLE titles (
    emp_no      INT         NOT NULL,
    title       VARCHAR     NOT NULL,
    from_date   DATE        NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no,title, from_date)
);

select * from titles

CREATE TABLE salaries (
    emp_no      INT       NOT NULL,
    salary      INT       NOT NULL,
    from_date   DATE      NOT NULL,
    to_date     DATE      NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, from_date)
);

select * from salaries
