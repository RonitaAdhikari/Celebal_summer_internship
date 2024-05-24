-- List of Employees id and total sale condcuted by employee
SELECT p.BusinessEntityID AS EmployeeID ,p.FirstName, p.LastName, sp.SalesYTD AS TotalSale
FROM [AdventureWorks2022].[Sales].[SalesPerson] sp
INNER JOIN [AdventureWorks2022].[Person].[Person] p
ON sp.BusinessEntityID = p.BusinessEntityID;