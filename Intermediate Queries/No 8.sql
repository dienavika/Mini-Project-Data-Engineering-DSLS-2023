CREATE VIEW full_order_details AS
SELECT 
	OrderID,
	[Order Details].ProductID,
	ProductName,
	[Order Details].UnitPrice,
	Quantity,
	Discount,
	[Order Details].UnitPrice * Quantity AS TotalPrice,
	[Order Details].UnitPrice * Quantity * Discount AS DiscountPrice,
	([Order Details].UnitPrice * Quantity) - ([Order Details].UnitPrice * Quantity * Discount) AS Total
FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
