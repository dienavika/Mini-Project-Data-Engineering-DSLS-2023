SELECT 
	SUM(([Order Details].UnitPrice * Quantity) - ([Order Details].UnitPrice * Quantity * Discount)) AS Price,
	MONTH(OrderDate) AS Bulan
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
GROUP BY MONTH(OrderDate)
Order BY Bulan