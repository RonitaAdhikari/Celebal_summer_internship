-- Details of first order of the system

SELECT TOP(1) * 
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
WHERE OrderDate = (SELECT MIN(OrderDate) FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]);