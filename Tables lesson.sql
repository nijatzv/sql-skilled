													-- TABLES 

													-- CREATE 

CREATE TABLE Customers (
	ID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(100),
	Phone VARCHAR(20),
	City VARCHAR(50),
	Country VARCHAR(50)
);

													-- ALTER 

CREATE TABLE Students (
	ID INT PRIMARY KEY,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	AGE INT
);

-- adding a new column
ALTER TABLE Students
ADD Grade VARCHAR(10);

SELECT * FROM Students


-- removing a table
DROP TABLE Students;


-- removing a table BUT high speed in large datasets, risky bcs we cannot reestablish our removed data
TRUNCATE TABLE table_name;


-- foreign key
CREATE TABLE Classes (
	class_id INT PRIMARY KEY,
	teacher_name VARCHAR(50)
);

CREATE TABLE Students (
	student_id INT PRIMARY KEY,
	student_name VARCHAR(50),
	class_id INT,
	FOREIGN KEY (class_id) REFERENCES Classes(class_id) -- database engineers often use this but we should know as well
);


-- primary key (can't be either duplicate or NULL, mueyyenlesdirici id)
CREATE TABLE Students (
	id INT PRIMARY KEY,
	name VARCHAR(50),
	age INT,
	email VARCHAR(50)
);

INSERT INTO Students (id, name, age, email)
VALUES
	(1, 'John Doe', 20, 'john.doe@example.com'),
	(2, 'Jane Smith', 19, 'jane.smith@example.com'),
	(3, 'Bob Johnson', 21, 'bob.johnson@example.com');

SELECT * FROM Students


-- adding value into table using INSERT: inserting only a value ; 
INSERT INTO dependents (
	first_name,
	last_name,
	relationship,
	employee_id
)
VALUES (
	'Dustin',
	'Johnson',
	'Child',
	178
);

SELECT * FROM dependents
WHERE employee_id = 178;


-- inserting many values ;
INSERT INTO dependents (
	first_name,
	last_name,
	relationship,
	employee_id
)
VALUES 
	(
		'Cameron',
		'Bell',
		'Child',
		192
	),
	(
		'Michelle',
		'Bell',
		'Child',
		192
	);

SELECT 
	*
FROM 
	dependents
WHERE
	employee_id = 192;


-- inserting from a table to another table
CREATE TABLE table10 (
	ID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age INT
);
INSERT INTO table10 (
	ID,
	Name,
	Age
)
VALUES 
	(1, 'John', 25),
	(2, 'Mary', 30),
	(3, 'Tom', 40),	
	(4, 'Jane', 35);

CREATE TABLE table11 (
	ID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age	 INT
);

SELECT * FROM table10
SELECT * FROM table11

INSERT INTO table11 (ID, Name, Age)
SELECT ID, Name, Age FROM table10;

SELECT * FROM table11


-- update changes a value/values in the created table
UPDATE employees
SET
	last_name = 'Lopez'
WHERE 
	employee_id = 192;

SELECT 
	employee_id,
	first_name, last_name
FROM
	employees
WHERE 
	employee_id = 192


UPDATE dependents
SET last_name = (
	SELECT
		last_name
	FROM
		employees
	WHERE
		employee_id = dependents.employee_id
);


-- delete removes any value from table
DELETE FROM dependents
WHERE
	employee_id = 16;

SELECT
	COUNT(*)
FROM
	dependents
WHERE
	employee_id = 16;