-- TASK 1 (INSERT)

--"Employees" cədvəlinə bütün sütunlar üzrə uyğun qiymətlər daxil edin.


INSERT INTO employees (
	first_name, last_name, email, phone_number,
	hire_date, job_id, salary, manager_id, department_id
)
VALUES 
	(
		'Nijat', 'Zakarya', 'zekeryenicat@gmail.com', '012.345.6789', 
		'2023-04-01', 9, 6000.00, 103, 6

	);

	SELECT * FROM employees


	(select
		manager_id
	from
		employees
	where
		employees.job_id = 9);

		(select
		department_id
	from
		employees
	where
		manager_id = 103);
