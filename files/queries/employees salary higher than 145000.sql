# find out the employees who have salary higher than 145000 
SELECT 
	e.emp_no, 
    e.first_name, 
    e.last_name, 
    s.salary
FROM 
	employees e
JOIN 
	salaries s 
ON 
	e.emp_no = s.emp_no
WHERE s.salary > 145000
ORDER BY s.salary; 