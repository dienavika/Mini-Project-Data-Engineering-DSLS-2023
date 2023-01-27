SELECT Top (10) 
	COUNT(OrderID) AS JumlahOrder,
	ShipCity,
	ShipCountry
FROM Orders
GROUP BY ShipCity, ShipCountry
ORDER BY JumlahOrder DESC