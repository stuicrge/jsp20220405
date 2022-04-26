USE w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Employees;
SELECT CustomerName FROM Customers;
SELECT Address, CustomerName FROM Customers;

-- WHERE : 어떤 ROW를 선택할 지 결정해주는 절(키워드)
SELECT * FROM Customers
WHERE Country = 'Mexico';
SELECT *FROM Customers
WHERE Country = 'Germany';

SELECT * FROM Employees;

-- 작은 따움표 : 문자열값
-- ex3) 고객ID가 1번인 고객조회
SELECT * FROM Customers WHERE CustomerID = 1; -- 수형식은 작은 따움표 안씀 써도 되긴함
SELECT * FROM Customers WHERE CUstomerID = 90;
SELECT * FROM Customers WHERE CustomerID = '1';
SELECT * FROM Cusomers WHERE Country = Germany; -- 따움표르 안써서 에러발생

SELECT  CustomerName FROM Customers WHERE CustomerID = 1;

SELECT  CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;