SELECT
	DISTINCT Top 10 ProductName,
	ReorderLevel
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
ORDER BY ReorderLevel DESC