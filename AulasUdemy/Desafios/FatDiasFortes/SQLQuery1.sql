/*
DESAFIO 4 – Dias fortes

Quero saber:

Dia do mês (DAY(OrderDate))
Quantidade de vendas

Ordenar do dia com mais vendas para o com menos.
*/

select 
Year(OrderDate) as Ano,
Month(OrderDate) as Mes,
Day(OrderDate) as Dia, 
count(*) as contagem 
From FactResellerSales group by OrderDate 
order by contagem desc