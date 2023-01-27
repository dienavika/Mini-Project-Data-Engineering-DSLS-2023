SELECT 
	COUNT(OrderID) AS JumlahOrder,
	ShipperID,
	CompanyName
FROM Orders
INNER JOIN Shippers ON Orders.ShipVia = Shippers.ShipperID
GROUP BY CompanyName, ShipperID
ORDER BY JumlahOrder DESC;