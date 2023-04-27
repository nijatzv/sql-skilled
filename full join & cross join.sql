													/* FULL JOIN */
SELECT * FROM Customers

SELECT * FROM Orders

SELECT * 
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustID = Orders.CustID;


													/* CROSS JOIN */
SELECT * FROM employees

SELECT* FROM departments

SELECT 
* FROM employees
CROSS JOIN departments; 
