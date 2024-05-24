-- Number of orders each employee has taken for customers with CustomerlDs between A and AO
SELECT p.BusinessEntityID AS EmployeeID ,p.FirstName, p.LastName, COUNT(*) AS TotalOrders
FROM [AdventureWorks2022].[Sales].[SalesPerson] sp
INNER JOIN [AdventureWorks2022].[Person].[Person] p
ON sp.BusinessEntityID = p.BusinessEntityID
GROUP BY p.BusinessEntityID, p.FirstName, p.LastName;