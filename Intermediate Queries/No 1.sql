SELECT 
	COUNT(CustomerID) AS JumlahCustomer,
	MONTH(OrderDate) AS Bulan
FROM Orders
WHERE YEAR (OrderDate) = 1997
GROUP BY MONTH (OrderDate)