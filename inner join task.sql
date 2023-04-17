/* Seattle şəhərində yerləşən şöbələrdə hansı işçilər işləyir? */

SELECT * FROM employees

SELECT * FROM departments

SELECT * FROM locations

/* department_id & location_id */

SELECT
	first_name,
	last_name,
	email,
	l.city /* kodu yazanda mene komek olsun */
FROM 
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
INNER JOIN locations l ON l.location_id = d.location_id
WHERE
	l.location_id IN (1700)