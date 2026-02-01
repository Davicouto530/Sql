select
SalesOrderNumber,
OrderQuantity,
UnitPrice,
SalesAmount

From FactResellerSales

-- ">" maior que
-- "<" menor que
-- ">=" maior ou igual
-- "<=" menor ou igual 

where OrderQuantity <= 25  
AND SalesAmount > 2000

order by 2, 4 desc