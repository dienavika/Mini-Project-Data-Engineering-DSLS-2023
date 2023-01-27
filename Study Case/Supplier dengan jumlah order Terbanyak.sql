SELECT TOP (10)
	SUM(UnitsOnOrder) AS JumlahOrder,
	CompanyName
FROM Suppliers
INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
GROUP BY CompanyName
ORDER BY JumlahOrder DESC
