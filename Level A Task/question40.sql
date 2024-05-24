-- Supplierid and number of products offered

SELECT v.BusinessEntityID AS SupplierID, COUNT(pv.ProductID) AS NumberOfProductsOffered
FROM [AdventureWorks2022].[Purchasing].[ProductVendor] pv
INNER JOIN [AdventureWorks2022].[Purchasing].[Vendor] v
ON pv.BusinessEntityID = v.BusinessEntityID
GROUP BY v.BusinessEntityID;