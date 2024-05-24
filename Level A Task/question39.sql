-- Product name and total revenue from that product

SELECT p.Name AS ProductName, SUM(sod.LineTotal) AS TotalRevenue
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
JOIN [AdventureWorks2022].[Sales].[SalesOrderDetail] sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN [AdventureWorks2022].[Production].[Product] p ON sod.ProductID = p.ProductID
GROUP BY p.Name;
