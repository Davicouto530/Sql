/*
Classificação de faturamento anual

Soma o faturamento do ano

Define critério (30 milhões)

Classifica o ano como forte ou fraco
*/

select
Year(OrderDate) as Ano,

sum(ExtendedAmount) as Soma,

case when sum(ExtendedAmount) > 30000000 then 'Ano forte'
else 'Ano fraco' end as fat_ano

from FactResellerSales
group by Year(OrderDate)
order by 2 desc
