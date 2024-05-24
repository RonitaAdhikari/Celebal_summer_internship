-- What is the total revenue of the company.

SELECT SalesOrderID, SUM(TotalDue) AS TotalRevenue
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
GROUP BY SalesOrderID;