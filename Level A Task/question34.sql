-- List of products that were never ordered

SELECT 
    p.Name AS ProductName,
    pc.Name AS CategoryName
FROM [AdventureWorks2022].[Production].[Product] p
JOIN [AdventureWorks2022].[Production].[ProductSubcategory] psc ON p.ProductSubcategoryID = psc.ProductSubcategoryID
JOIN [AdventureWorks2022].[Production].[ProductCategory] pc ON psc.ProductCategoryID = pc.ProductCategoryID
WHERE p.ProductID NOT IN (SELECT ProductID FROM [AdventureWorks2022].[Purchasing].[ProductVendor]);
