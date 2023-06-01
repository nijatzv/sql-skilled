-- TASK 4 (CREATE)
-- 4 sütunlu yeni bir cədvəl yaradın.

CREATE TABLE books(
	book_id INT PRIMARY KEY,
	book_name VARCHAR(50),
	type VARCHAR(50),
	pages INT
);

SELECT * FROM books