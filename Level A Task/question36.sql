-- List of top 10 countries by sales
SELECT TOP(10) t.Name AS Country, COUNT(*) AS SalesCount
    FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] s
    INNER JOIN [AdventureWorks2022].[Sales].[SalesTerritory] t
    ON s.TerritoryID = t.TerritoryID
    GROUP BY t.Name;