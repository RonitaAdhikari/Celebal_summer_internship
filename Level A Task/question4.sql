-- list of all customers who live in UK or US
SELECT 
    CONCAT(pp.FirstName, ' ', pp.MiddleName,' ', pp.LastName) AS Customer_Name,
    sp.CountryRegionCode,
    a.City,
    a.AddressLine1,
    c.CustomerID,
    c.AccountNumber,
    c.TerritoryID,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
JOIN [AdventureWorks2022].[Sales].[Customer] c 
ON pp.BusinessEntityID = c.PersonID
JOIN [AdventureWorks2022].[Person].[BusinessEntityAddress] ba 
ON pp.BusinessEntityID = ba.BusinessEntityID
JOIN [AdventureWorks2022].[Person].[Address] a
ON ba.AddressID = a.AddressID
JOIN [AdventureWorks2022].[Person].[StateProvince] sp
ON a.StateProvinceID = sp.StateProvinceID
WHERE sp.CountryRegionCode = 'UK' OR sp.CountryRegionCode = 'US';
