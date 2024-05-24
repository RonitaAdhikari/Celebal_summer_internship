-- List of products where units in stock is less than 10 and units on order are 0.
SELECT *
FROM [AdventureWorks2022].[Production].[Product] p
INNER JOIN [AdventureWorks2022].[Production].[ProductInventory] pi ON p.ProductID = pi.ProductID
WHERE pi.Quantity < 10;
