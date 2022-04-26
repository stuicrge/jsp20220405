USE w3schools;
SELECT * FROM Customers ORDER BY CustomerID Desc;
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(92,'Donald','President','New York','Seattle','000000','USA');
INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES(93,'Son','Heung-min','Tottenum','London','1111','UK');

INSERT INTO Customers
VALUES(94,'Cha','Bum','Bundesliga','Berlin','2222','Germany');

-- DESC : 테이블 schema 조회
DESCRIBE Customers;
DESC Customers;

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar','Isaac','london','London','B-999','UK');

INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES('USA','A112','Seattle','Hotel','Rap Monster','RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES('jisung','Park','1999-01-01','pic1','manchester united');





