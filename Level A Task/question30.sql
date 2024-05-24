-- List of orders placed by customers who do not have a Fax number

SELECT 
    soh.SalesOrderID,
    soh.OrderDate,
    soh.TotalDue,
    c.CustomerID,
    p.FirstName,
    p.LastName,
    a.PostalCode
FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
JOIN [AdventureWorks2022].[Sales].[Customer] c ON soh.CustomerID = c.CustomerID
JOIN [AdventureWorks2022].[Person].[Person] p ON c.PersonID = p.BusinessEntityID
LEFT JOIN [AdventureWorks2022].[Person].[PersonPhone] pp ON p.BusinessEntityID = pp.BusinessEntityID
JOIN [AdventureWorks2022].[Person].[Address] a ON soh.ShipToAddressID = a.AddressID
WHERE pp.PhoneNumber IS NULL 
ORDER BY c.CustomerID, soh.OrderDate;