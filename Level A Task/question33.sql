-- List of ProductNames and Categories for the supplier 'Specialty Biscuits, Ltd.

SELECT 
    p.Name AS ProductName,
    pc.Name AS CategoryName
FROM [AdventureWorks2022].[Purchasing].[ProductVendor] pv
JOIN [AdventureWorks2022].[Production].[Product] p ON pv.ProductID = p.ProductID
JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON p.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON psc.ProductCategoryID = pc.ProductCategoryID
JOIN [AdventureWorks2022].[Purchasing].[Vendor] v ON pv.BusinessEntityID = v.BusinessEntityID
WHERE v.Name = 'Specialty Biscuits, Ltd.';
