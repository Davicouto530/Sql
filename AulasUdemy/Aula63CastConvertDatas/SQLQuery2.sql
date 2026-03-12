select top 10 
SalesOrderLineNumber,
CustomerKey,
SalesAmount,
OrderDate,

cast(OrderDate as date),
-- CAST converte um tipo de dado para outro
-- aqui está convertendo OrderDate para o tipo DATE
-- isso remove a parte de hora e mostra apenas a data

convert(varchar, OrderDate, 103) as padraobr
-- CONVERT também muda o tipo de dado
-- aqui transforma a data em texto (varchar)
-- o 103 define o formato da data no padrão brasileiro (dd/mm/yyyy)

from FactInternetSales

------------------------------------------------

select 
cast(getdate() as date) as data,
-- GETDATE pega a data e hora atual do sistema
-- CAST converte para DATE, mostrando apenas a data

convert(varchar, getdate(), 103) as padraobr
-- converte a data atual para texto
-- usando o formato brasileiro (dia/mês/ano)