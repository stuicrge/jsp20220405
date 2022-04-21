USE w3schools;
SELECT * FROM Customers;
SELECT Country FROM Customers;

-- DISTINCT 중복제거
SELECT DISTINCT(Country) FROM Customers;
SELECT DISTINCT Country FROM Customers;

-- Suppliers 테이블에서 중복없이  Country 조회
SELECT DISTINCT(Country) FROM Suppliers;