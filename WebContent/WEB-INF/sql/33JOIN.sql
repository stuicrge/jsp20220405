USE w3schools;
DESC Products;
SELECT * FROM Products;
DESC Categories;
SELECT * FROM Categories;

SELECT * FROM Products JOIN Categories; -- 겷합
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.categoryID;

SELECT * FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 별칭과 같이 사용
SELECT * FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;