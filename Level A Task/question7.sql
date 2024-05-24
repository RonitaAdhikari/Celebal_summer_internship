-- List of customers who ever placed an order

SELECT CONCAT(pp.FirstName, ' ', pp.MiddleName, ' ', pp.LastName) AS Customer_Name,
    c.CustomerID,
    c.AccountNumber,
    c.PersonID
FROM [AdventureWorks2022].[Person].[Person] pp
INNER JOIN [AdventureWorks2022].[Sales].[Customer] c ON pp.BusinessEntityID = c.PersonID
WHERE c.CustomerID IN (SELECT CustomerID FROM [AdventureWorks2022].[Sales].[SalesOrderHeader]);