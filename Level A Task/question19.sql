-- list of all orders with order total > 200

SELECT *
    FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
    WHERE TotalDue > 200
    ORDER BY OrderDate;