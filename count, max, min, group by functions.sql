										/* 7.3 COUNT funksiyası Ümumi funksiyalar – Aggregate Functions 
										COUNT bir və ya bir neçə sütunda müəyyən bir şərtə cavab verən sətirlərin sayını hesablamaq üçün istifadə olan funksiyadır. */
SELECT
	COUNT(*)
FROM
	employees


SELECT
	COUNT(*)
FROM
	employees
WHERE
	department_id = 6


SELECT
	COUNT(*) as employee_count
FROM
	employees	
WHERE
	job_id = 9


SELECT
	department_id,
	COUNT(*) as employee
FROM
	employees	
GROUP BY
	department_id;


SELECT
	e.department_id,
	d.department_name,
	COUNT(*) as employee
FROM
	employees e
INNER JOIN departments d
	ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name


SELECT
	e.department_id,
	d.department_name,
	COUNT(*)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name
ORDER BY
	COUNT(*) DESC;


											/* MAX funksiyası - Ümumi funksiyalar – Aggregate Functions
											MAX, cədvəldəki sütunun maksimum dəyərini əldə etmək üçün istifadə edilir. */

SELECT
	MAX(salary)
FROM
	employees


SELECT
	department_id,
	MAX(salary)
FROM
	employees
GROUP BY
	department_id


SELECT
	e.department_id,
	d.department_name,
	MAX(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name
ORDER BY
	MAX(salary) DESC


											/* MİN funksiyası - Ümumi funksiyalar – Aggregate Functions

											MİN, cədvəldəki sütunun minimum dəyərini əldə etmək üçün istifadə edilir. */

SELECT
	MIN(salary)
FROM
	employees

SELECT
	department_id,
	MIN(salary)
FROM 
	employees
GROUP BY
	department_id
ORDER BY
	MIN(salary)


SELECT
	e.department_id,
	d.department_name,
	MIN(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name;


SELECT
	e.department_id,
	d.department_name,
	MIN(salary)
FROM
	employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	e.department_id,
	d.department_name
ORDER BY
	MIN(salary);


												/* GROUP BY - Məlumatların qruplaşdırılması – Grouping Data

												GROUP BY – sətirləri qruplara birləşdirin və hər qrupa ümumi funksiya tətbiq edin. */

SELECT
	department_id,
	COUNT(employee_id) say
FROM
	employees
GROUP BY
	department_id;


SELECT
	department_name,
	COUNT(employee_id) say
FROM employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	department_name;


SELECT
	department_name,
	COUNT(employee_id) say
FROM employees e
INNER JOIN departments d ON d.department_id = e.department_id
GROUP BY
	department_name
ORDER BY
	say DESC;