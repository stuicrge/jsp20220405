USE w3schools;

SELECT * FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
WHERE 
	c.CategoryID = 1;

    
SELECT * FROM Products p JOIN Categories c
ON p.CategoryID = c.CategoryID
WHERE 
	c.CategoryID = 'Condiments';
 
 -- 1996년 7월 4일에 주문한 고객의 조회
 SELECT * FROM Orders;
 SELECT * FROM Customers;
SELECT * FROM Customers c JOIN Orders o
 on c.CustomerID = o.CustomerID
 WHERE 
	o.OrderDate = '1996-07-04';