-- list of employees whose FirstName contains character a

SELECT *
FROM [AdventureWorks2022].[Person].[Person] p
INNER JOIN [AdventureWorks2022].[Sales].[SalesPerson] sp
ON sp.BusinessEntityID = p.BusinessEntityID
WHERE p.FirstName LIKE '%a%';