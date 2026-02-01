select
OrderQuantity,
SalesAmount

From FactResellerSales

where SalesAmount between 5000 and 10000
and OrderQuantity between 5 and 15

order by 1, 2 