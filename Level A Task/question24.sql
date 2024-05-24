-- List of employee firsname, lastName, superviser FirstName, LastName

SELECT  p.FirstName AS 'Employee First Name',
        p.LastName AS 'Employee Last Name',
        m.FirstName AS 'Manager First Name',
        m.LastName AS 'Manager Last Name'
  FROM [AdventureWorks2022].[HumanResources].[Employee] e
  INNER JOIN [AdventureWorks2022].[Person].[Person] p ON e.BusinessEntityID = p.BusinessEntityID
  INNER JOIN (SELECT p1.BusinessEntityID, p1.FirstName, p1.LastName, e1.OrganizationLevel 
            FROM [AdventureWorks2022].[Person].[Person] p1
            INNER JOIN [AdventureWorks2022].[HumanResources].[Employee] e1 ON e1.BusinessEntityID = p1.BusinessEntityID
            WHERE e1.JobTitle LIKE '%Manager%') m ON e.OrganizationLevel = m.OrganizationLevel;