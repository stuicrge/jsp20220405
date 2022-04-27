USE w3schools;

-- = 같다
SELECT * FROM Customers
WHERE Country = 'Germany';

-- > , < >= , <=
-- <> : 다르다(같지않다) != : 다르다 (db버전마다 다르다)
SELECT * FROM Customers
WHERE Country <> 'Germany';

-- 산술 연산
-- + - * /
SELECT 3+5;
SELECT 3*5;
SELECT 3-5;
SELECT 3/5;


SELECT * FROM Products ORDER BY Price;
SELECT MAX(Price)-MIN(Price) AS 차이
FROM Products;

-- 문자열 연결 연산
-- concat 
SELECT CustomerName, CONCAT(Country,City,Address)AS Address FROM Customers;

