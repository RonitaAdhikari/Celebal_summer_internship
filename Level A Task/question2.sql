-- list of all customers where company name ending in 'N'
SELECT CONCAT(pp.FirstName,' ', pp.MiddleName,' ', pp.LastName) AS Customer_Name,
    s.Name AS Company_Name,
    c.CustomerID,
    c.AccountNumber,
    c.TerritoryID,
    c.StoreID,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID
INNER JOIN [AdventureWorks2022].[Sales].[Store] s ON c.StoreID = s.BusinessEntityID
WHERE s.Name LIKE '%N';