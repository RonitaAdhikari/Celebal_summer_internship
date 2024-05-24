-- list of all customers who live in Berlin or London
SELECT 
    CONCAT(pp.FirstName, ' ', pp.MiddleName,' ', pp.LastName) AS Customer_Name,
    a.City,
    c.CustomerID,
    c.AccountNumber,
    c.TerritoryID,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c 
ON pp.BusinessEntityID = c.PersonID
INNER JOIN [AdventureWorks2022].[Person].[BusinessEntityAddress] ba 
ON pp.BusinessEntityID = ba.BusinessEntityID
INNER JOIN [AdventureWorks2022].[Person].[Address] a
ON ba.AddressID = a.AddressID
WHERE a.City = 'Berlin' OR a.City = 'London';
