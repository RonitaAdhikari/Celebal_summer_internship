-- List of product Names that were shipped to France

SELECT DISTINCT p.Name AS ProductName
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
JOIN [AdventureWorks2022].[Sales].[SalesOrderDetail] sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN [AdventureWorks2022].[Production].[Product] p ON sod.ProductID = p.ProductID
JOIN [AdventureWorks2022].[Person].[Address] a ON soh.ShipToAddressID = a.AddressID
JOIN [AdventureWorks2022].[Person].[StateProvince] sp ON a.StateProvinceID = sp.StateProvinceID
JOIN [AdventureWorks2022].[Person].[CountryRegion] cr ON sp.CountryRegionCode = cr.CountryRegionCode
WHERE cr.Name = 'France';
