-- Find the details of most expensive order date

SELECT * 
FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
WHERE LineTotal = (SELECT MAX(LineTotal) FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]);