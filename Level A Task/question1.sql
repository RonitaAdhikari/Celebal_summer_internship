SELECT CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName) AS Customer_Name,
    c.CustomerID,
    c.AccountNumber,
    c.TerritoryID,
    c.StoreID,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID;