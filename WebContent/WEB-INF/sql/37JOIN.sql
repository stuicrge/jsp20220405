USE w3schools;

SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1
;


SELECT c.CustomerName, COUNT(o.OrderID)
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

USE mydb2;
SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) numOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE b.id=15;