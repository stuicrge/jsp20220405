USE w3schools;
-- 주문한 적 없는 고객명 조회(JOIN, SUB QUERY)
-- Orders, Customers

-- JOIN
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1
;
-- SUB QUERY
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY 1;


-- JOIN
SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;


SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c
	ON p.CategoryID = c.CategoryID
ORDER BY 1;

SELECT p.ProductName, (SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName
FROM Products p
ORDER BY 1;

SELECT DISTINCT s.Country
FROM Suppliers s JOIN Customers c ON s.Country = c.Country
ORDER BY 1;

SELECT DISTINCT Country
FROM Suppliers
WHERE Country IN (SELECT Country FROM Customers)
ORDER BY 1;
 

-- leetcode 1587
-- SUBQUERY

SELECT u.name, SUM(t.amount) balance 
FROM Users u JOIN Transactions t
ON u.account = t.account
GROUP BY u.account
HAVING balance > 10000;





