#1
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        employees.gender,
        salaries.salary
FROM employees
    LEFT JOIN salaries
    ON (employees.emp_no = salaries.emp_no)
;

#2
SELECT first_name, last_name
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
;

#3
SELECT  dept_manager.dept_no,
        depts.dept_name,
        dept_manager.emp_no,
        employees.last_name,
        employees.first_name,
        dept_manager.from_date,
        dept_manager.to_date
FROM dept_manager
    INNER JOIN depts
        ON (dept_manager.dept_no = depts.dept_no)
    INNER JOIN employees
        ON (dept_manager.emp_no = employees.emp_no)
;

#4
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        depts.dept_name
FROM employees
    INNER JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN depts
        ON (dept_emp.dept_no = depts.dept_no)
;

#5
SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
;

#6
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        depts.dept_name
FROM employees
    INNER JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN depts
        ON (dept_emp.dept_no = depts.dept_no)
WHERE depts.dept_name = 'Sales'
;

#7
SELECT  employees.emp_no,
        employees.last_name,
        employees.first_name,
        depts.dept_name
FROM employees
    INNER JOIN dept_emp
        ON (employees.emp_no = dept_emp.emp_no)
    INNER JOIN depts
        ON (dept_emp.dept_no = depts.dept_no)
WHERE depts.dept_name IN ('Sales', 'Development')
;

#8
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;







