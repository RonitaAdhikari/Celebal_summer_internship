-- For each order get the OrderID and Average quantity of items in that order


SELECT SalesOrderID, AVG(OrderQty) AS AverageQuantity 
FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY SalesOrderID;