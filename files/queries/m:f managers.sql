#select detp_name, gender,emp_no,from_date,to_date, calendar_year
SELECT 
	d.dept_name,
    ee.gender,
    ee.emp_no,
    dt.from_date,
    dt.to_date,
    e.calendar_year ,
# active count 1 to calendar_year between from_date and to_date
   CASE 
		WHEN e.calendar_year >= YEAR(dt.from_date) AND e.calendar_year <= YEAR (dt.to_date) THEN 1
        ELSE  0
	END AS active
#subquery e with calendar_year
FROM 
	(SELECT 
		YEAR (hire_date) AS calendar_year
	FROM employees
    GROUP BY calendar_year) AS e
#join t_departments, t_dept_manager, t_employees tables 
    CROSS JOIN
		departments AS d 
    JOIN 
		dept_manager AS dt 
    ON 
		d.dept_no = dt.dept_no
    JOIN 
      employees AS ee 
	ON 
		ee.emp_no = dt.emp_no
    ORDER BY ee.emp_no, calendar_year;