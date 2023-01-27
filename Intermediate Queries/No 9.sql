CREATE PROCEDURE Invoice @CustomerID NVARCHAR (40)
AS
SELECT 
	Customers.CustomerID,
	CompanyName,
	OrderID,
	OrderDate,
	RequiredDate,
	ShippedDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID = @CustomerID

EXEC Invoice @CustomerID = 'VINET'