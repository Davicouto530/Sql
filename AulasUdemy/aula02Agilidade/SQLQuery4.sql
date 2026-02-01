select 
ProductKey
,SalesOrderNumber
,SalesTerritoryKey
FROM FactResellerSales

EXEC sp_columns FactResellerSales