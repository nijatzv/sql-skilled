/* Hər bir departament üçün ümumi əmək haqqı nə qədərdir? */

SELECT * FROM departments
SELECT * FROM employees


SELECT
	e.department_id,
	d.department_name,
	SUM(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	department_name
ORDER BY
	SUM(salary) DESC;




