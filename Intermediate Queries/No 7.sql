SELECT TOP (5)
	ProductName,
	OrderDate,
	Quantity
FROM Products
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE Year(OrderDate) = 1997 AND MONTH(OrderDate) = 12
Order BY Quantity DESC