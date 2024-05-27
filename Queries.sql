SELECT E.emp_no, E.first_name, E.last_name, E.sex, S.salary  
FROM employees AS E
Join salaries AS S
ON (E.emp_no = S.emp_no);


SELECT E.first_name, E.last_name, E.hire_date
FROM employees AS E
Where e.hire_date >= '1986-01-01' and 
	e.hire_date <'1987-01-01';


SELECT E.first_name, E.last_name, DM.dept_no, D.dept_name, E.emp_no 
FROM employees AS E
Join dept_manager AS DM
ON (E.emp_no = DM.emp_no)
	Join departments as D
	ON (DM.dept_no = D.dept_no);


SELECT DE.dept_no, E.emp_no, E.last_name, E.first_name, D.dept_name
FROM employees AS E
Join dept_emp AS DE
ON (E.emp_no = DE.emp_no)
	Join departments as D
	ON (DE.dept_no = D.dept_no);


SELECT E.first_name, E.last_name, E.sex  
FROM employees AS E
WHERE E.first_name = 'Hercules' 
AND	E.last_name LIKE 'B%';


SELECT E.first_name, E.last_name, E.emp_no, d.dept_name
FROM employees AS E
Join dept_emp AS DE
ON (E.emp_no = DE.emp_no)
	Join departments as D
	ON (DE.dept_no = D.dept_no)
WHERE D.dept_name = 'Sales';


SELECT E.first_name, E.last_name, E.emp_no, d.dept_name
FROM employees AS E
Join dept_emp AS DE
ON (E.emp_no = DE.emp_no)
	Join departments as D
	ON (DE.dept_no = D.dept_no)
WHERE D.dept_name = 'Sales'
	OR D.dept_name = 'Development';


SELECT E.last_name, count(E.last_name) as "count"
from employees as E
GROUP BY E.last_name 
ORDER BY "count" DESC;
