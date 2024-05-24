-- Get the OrderlD and the total quantity for each order that has a total quantity of greater than 300

SELECT SalesOrderID, SUM(OrderQty) AS 'Total Quantity'
  FROM [AdventureWorks2022].[Sales].[SalesOrderDetail]
  GROUP BY SalesOrderID
  HAVING SUM(OrderQty) > 300
  ORDER BY SalesOrderID;