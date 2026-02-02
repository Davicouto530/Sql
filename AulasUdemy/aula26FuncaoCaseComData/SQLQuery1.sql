-- Seleciona dados da venda e separa a data em ano, mês e dia

select 
SalesOrderNumber, -- número da ordem de venda
OrderDate, -- número da ordem de venda
YEAR (OrderDate) as Ano, -- extrai apenas o ano da data
MONTH (OrderDate) as Mes, -- extrai apenas o mês da data
DAY (OrderDate) as Dia -- extrai apenas o dia da data

From FactResellerSales