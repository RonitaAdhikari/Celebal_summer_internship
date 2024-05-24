-- List of Orders and ProductNames

SELECT * 
FROM [AdventureWorks2022].[Sales].[SalesOrderDetail] sod
INNER JOIN [AdventureWorks2022].[Production].[Product] p
ON sod.ProductID = p.ProductID;