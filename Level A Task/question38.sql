-- Orderdate of most expensive order

SELECT TOP(1) OrderDate, TotalDue, SalesOrderNumber, CustomerID
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
ORDER BY TotalDue DESC;
