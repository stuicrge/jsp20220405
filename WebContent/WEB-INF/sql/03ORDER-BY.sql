-- ASC 오름차순
-- DESC 내림차순
 
 SELECT * FROM Employees;
 
 SELECT * FROM Employees ORDER BY BirthDate DESC, LastName;
 SELECT  DISTINCT Country FROM Customers ORDER BY Country;
 SELECT DISTINCT City FROM Customers ORDER BY City;
 
 SELECT * FROM Customers ORDER BY 5;
 SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 3;
 SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers ORDER BY 7,5;
 
 