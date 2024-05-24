-- List of orders place by the best customer

SELECT *
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
WHERE soh.CustomerID = (SELECT TOP 1 CustomerID
                        FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
                        GROUP BY CustomerID
                        ORDER BY COUNT(*) DESC);

