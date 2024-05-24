-- List of customers who ordered Tofu

SELECT CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName) AS Customer_Name,
    c.CustomerID,
    p.Name AS Product_Name,
    c.AccountNumber,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID
INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderHeader] soh ON c.CustomerID = soh.CustomerID
INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderDetail] sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN [AdventureWorks2022].[Production].[Product] p ON sod.ProductID = p.ProductID
WHERE p.Name = 'Tofu';