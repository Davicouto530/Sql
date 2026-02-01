select 
ProductKey
,SalesOrderNumber
,OrderQuantity
,UnitPrice
,ExtendedAmount

from FactResellerSales
where ExtendedAmount > 5000