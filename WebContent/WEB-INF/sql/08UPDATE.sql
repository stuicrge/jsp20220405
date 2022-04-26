USE w3schools;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
UPDATE Employees
SET LastName = 'Sunja',
	FirstName='YuhJang'
WHERE EmployeeID='1';


-- 1번 고객의 계약자명은 
-- 도시는 프랑크 푸르트
UPDATE Customers
SET ContactName = 'Alfred Schmidt',
	City='Frankfurt'
WHERE Country = 'Mexico';

SELECT * FROM Products;
UPDATE Products
SET Price = Price+2;

    

