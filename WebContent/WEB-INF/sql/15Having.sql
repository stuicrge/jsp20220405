USE w3schools;

SELECT * FROM Customers;

SELECT Country, COUNT(CustomerID) count FROM Customers
WHERE count=6
GROUP BY Country
;

SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
HAVING count > 3;

SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
Having count =
(
	SELECT COUNT(CustomerID) count
    FROM Customers
    GROUP BY Country
    ORDER BY count DESC
    LIMIT 1
);