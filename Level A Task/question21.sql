-- List of Customer ContactName and number of orders they placed

SELECT CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName) AS Customer_Name,
    c.CustomerID, 
    COUNT(soh.SalesOrderID) AS NumberOfOrders
    FROM [AdventureWorks2022].[Person].[Person] pp
    INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID
    INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderHeader] soh ON c.CustomerID = soh.CustomerID
    GROUP BY CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName), c.CustomerID;