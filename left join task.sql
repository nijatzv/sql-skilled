/* 1.Hansı ölkələrin əlaqəli şöbələri yoxdur? */
SELECT * FROM countries
SELECT * FROM locations
SELECT * FROM departments

SELECT DISTINCT c.country_name
FROM countries c
LEFT JOIN locations l ON c.country_id = l.country_id
LEFT JOIN departments d ON l.location_id = d.location_id
WHERE d.department_id IS NULL
ORDER BY c.country_name;



/* 2.Bütün işçilərin adları və e-poçt ünvanları və onların menecerlərinin adları və e-poçt ünvanlarını (əgər varsa) bir araya gətirin. */
SELECT * FROM jobs
SELECT * FROM employees

SELECT e.first_name AS employee_first_name, e.last_name AS employee_last_name, e.email AS employee_email,
       m.first_name AS manager_first_name, m.last_name AS manager_last_name, m.email AS manager_email
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id
ORDER BY e.employee_id;