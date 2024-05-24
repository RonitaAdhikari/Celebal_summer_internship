-- list of all orders shipped to Canada

SELECT *, t.Name AS Country
    FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] s
    INNER JOIN [AdventureWorks2022].[Sales].[SalesTerritory] t
    ON s.TerritoryID = t.TerritoryID
    WHERE t.Name = 'Canada'
    ORDER BY OrderDate;