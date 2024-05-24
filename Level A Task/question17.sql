-- list of all orders placed on or after 1996/12/31

SELECT *
    FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]
    WHERE OrderDate >= '1996-12-31'
    ORDER BY OrderDate;