use employees;
#Select year, gender, emp_no from t_employees and t_dept_emp tables
SELECT 
	YEAR(d.from_date) AS calender_year,
    e.gender,
    COUNT(e.emp_no) AS number_of_employees
FROM employees AS e
JOIN dept_emp AS d 
ON e.emp_no = d.emp_no
GROUP BY calender_year, e.gender
HAVING calender_year >= 1990
ORDER BY calender_year;     
		
