-- list of Customers who live in London and have bought chai

SELECT CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName) AS Customer_Name,
    c.CustomerID,
    a.City,
    p.Name AS Product_Name,
    c.AccountNumber,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID
INNER JOIN [AdventureWorks2022].[Person].[BusinessEntityAddress] ba 
ON pp.BusinessEntityID = ba.BusinessEntityID
INNER JOIN [AdventureWorks2022].[Person].[Address] a
ON ba.AddressID = a.AddressID
INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderHeader] soh ON c.CustomerID = soh.CustomerID
INNER JOIN [AdventureWorks2022].[Sales].[SalesOrderDetail] sod ON soh.SalesOrderID = sod.SalesOrderID
INNER JOIN [AdventureWorks2022].[Production].[Product] p ON sod.ProductID = p.ProductID
WHERE a.City = 'London' AND p.Name = 'Chai';