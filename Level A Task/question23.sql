-- List of discontinued products which were ordered between 1/1/1997 and 1/1/1998

SELECT *
    FROM [AdventureWorks2022].[Production].[Product] p
    INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderDetail] sod ON p.ProductID = sod.ProductID
    INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderHeader] soh ON sod.SalesOrderID = soh.SalesOrderID
    WHERE p.DiscontinuedDate BETWEEN '1997-01-01' AND '1998-01-01';