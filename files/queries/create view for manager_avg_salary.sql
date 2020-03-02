#create view for manager_avg_salary
CREATE OR REPLACE VIEW v_manager_avg_salary AS 
	SELECT 
		ROUND(AVG(salary), 2)
	FROM 
		salaries s
	JOIN 
        dept_manager dm 
	ON 
        dm.emp_no = s.emp_no; 
        