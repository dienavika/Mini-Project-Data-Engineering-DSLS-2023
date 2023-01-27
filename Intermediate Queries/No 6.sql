SELECT 
	CompanyName,
	OrderDate,
	UnitPrice * Quantity AS TotalHarga
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
WHERE YEAR(OrderDate) = 1997 AND UnitPrice * Quantity > 500
