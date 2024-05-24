-- List of countries and sales made in each country
SELECT t.Name AS Country, SUM(TotalDue) AS Sales
    FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] s
    INNER JOIN [AdventureWorks2022].[Sales].[SalesTerritory] t
    ON s.TerritoryID = t.TerritoryID
    GROUP BY t.Name
    ORDER BY t.Name;