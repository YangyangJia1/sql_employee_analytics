USE employees;
# select column gender, dept_name, avg(salary), calendar_year
SELECT 
	e.gender, d.dept_name, ROUND(AVG(s.salary),2) AS salary, YEAR(s.from_date) AS calendar_year
FROM 
	salaries s
# join salaries, employees, dept_emp, departments together 
    JOIN 
    employees e ON s.emp_no = e.emp_no
    JOIN 	
	dept_emp de ON de.emp_no = e.emp_no 
    JOIN 
    departments d ON d.dept_no = de.dept_no
    GROUP BY d.dept_no, e.gender, calendar_year
# condition, calendar_year less than year 2000
    HAVING calendar_year <= 2000
    ORDER BY d.dept_no;