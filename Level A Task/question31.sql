-- List of Postal codes where the product Tofu was shipped


SELECT DISTINCT a.PostalCode
FROM [AdventureWorks2022].[Sales].[SalesOrderDetail] sod
JOIN [AdventureWorks2022].[Sales].[SalesOrderHeader] soh ON sod.SalesOrderID = soh.SalesOrderID
JOIN [AdventureWorks2022].[Production].[Product] p ON sod.ProductID = p.ProductID
JOIN [AdventureWorks2022].[Person].[Address] a ON soh.ShipToAddressID = a.AddressID
WHERE p.ProductID = (SELECT ProductID
                     FROM [AdventureWorks2022].[Production].[Product]
                     WHERE Name = 'Tofu');