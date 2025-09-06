#this is question one
USE salesdb;
SELECT e.firstName,
	   e.lastName,
       e.email,
       e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode = o.officeCode;
#this is question two
SELECT p.productName, 
       p.productVendor, 
       pl.productLine
FROM products p
LEFT JOIN productlines pl 
    ON p.productLine = pl.productLine;
#this is question 3
SELECT o.orderDate, 
       o.shippedDate, 
       o.status, 
       o.customerNumber
FROM customers c
RIGHT JOIN orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;