-- For each order get the orderlD, minimum quantity and maximum quantity for that order

SELECT SalesOrderID, MIN(OrderQty) AS MinQuantity, MAX(OrderQty) AS MaxQuantity
FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY SalesOrderID;