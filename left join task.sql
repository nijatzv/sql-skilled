/* 1.Hansı ölkələrin əlaqəli şöbələri yoxdur? */

SELECT * FROM countries
SELECT * FROM locations
SELECT * FROM departments


SELECT
	c.country_id,
	l.country_id,
	d.department_id,
	d.location_id
FROM countries c
LEFT JOIN locations l ON l.location_id = c.country_id
LEFT JOIN departments d ON d.location_id = l.location_id
WHERE
	c.country_id <> l.country_id



/* 2.Bütün işçilərin adları və e-poçt ünvanları və onların menecerlərinin adları və e-poçt ünvanlarını (əgər varsa) bir araya gətirin. */
SELECT
	first_name, last_name, email, manager_id
FROM
	employees