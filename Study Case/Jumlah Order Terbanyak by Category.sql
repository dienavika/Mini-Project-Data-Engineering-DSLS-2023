SELECT 
	SUM(UnitsOnOrder) AS JumlahOrder,
	CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
GROUP BY CategoryName
ORDER BY JumlahOrder DESC