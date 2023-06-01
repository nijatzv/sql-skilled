-- TASK 2 (UPDATE)
-- "Employees" cədvəlində bir sətir üzrə iki sütunu yeniləyin.

UPDATE employees
SET 
	first_name = 'Nicat',
	last_name = 'Zekerye'  -- updated from 'Nijat Zakarya' to 'Nicat Zekerye'
WHERE 
	employee_id = 208

select * from employees
where employee_id = 208