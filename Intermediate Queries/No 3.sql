SELECT TOP (5)
	ProductName,
	UnitsOnOrder,
	OrderDate
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE YEAR (OrderDate) = 1997 AND MONTH(OrderDate) = 01
ORDER BY UnitsOnOrder DESC