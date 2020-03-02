# find out employees' name, dept_name,from_date, to_date
SELECT 
	dm.emp_no,
    e.first_name, 
    e.last_name,
    d.dept_name,
    dm.from_date,
    dm.to_date
FROM
	employees e
# inner join dept_manager and departments table
INNER JOIN 
	dept_manager dm 
ON 
	dm.emp_no = e.emp_no
INNER JOIN
	departments d
ON 
	dm.dept_no = d.dept_no 
ORDER BY dm.emp_no;
    
    
    
    
    
    