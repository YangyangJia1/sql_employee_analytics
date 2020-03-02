# extract managers who were hired between 1989 and 2002
SELECT 
	* 
FROM 
	dept_manager
WHERE 
	emp_no IN 
	(SELECT 
		emp_no		
	 FROM 
		employees
	 WHERE hire_date BETWEEN '1989-01-01' AND '2002-01-01') 
ORDER BY emp_no; 