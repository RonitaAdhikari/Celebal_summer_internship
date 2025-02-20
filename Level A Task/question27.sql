-- List of managers who have more than four people reporting to them.
SELECT p.BusinessEntityID AS 'Manager ID',
        CONCAT(p.FirstName, ' ',p.MiddleName,' ', p.LastName) AS 'Manager Name',
        m.JobTitle AS 'Manager Job Title',
        (SELECT COUNT(*) FROM [AdventureWorks2022].[HumanResources].[Employee] e WHERE m.OrganizationLevel = e.OrganizationLevel) AS 'Total Employees'
  FROM [AdventureWorks2022].[HumanResources].[Employee] m
  INNER JOIN [AdventureWorks2022].[Person].[Person] p ON m.BusinessEntityID = p.BusinessEntityID
  WHERE JobTitle LIKE '%Manager%' AND (SELECT COUNT(*) FROM [AdventureWorks2022].[HumanResources].[Employee] e WHERE m.OrganizationLevel = e.OrganizationLevel) > 4
  ORDER BY OrganizationLevel;