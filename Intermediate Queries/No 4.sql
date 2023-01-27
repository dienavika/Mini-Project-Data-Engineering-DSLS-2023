SELECT Suppliers.CompanyName,
       Products.ProductName,
       Orders.OrderDate 
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID 
INNER JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE ProductName = 'Chai' AND YEAR (OrderDate) = 1997 AND MONTH(OrderDate) = 06