/*
DESAFIO 2 – Melhor mês da empresa

Preciso saber:

Ano
Mês
Total vendido no mês

Ordene do maior faturamento mensal para o menor.

Objetivo: descobrir o melhor mês da história da empresa.
*/

select 
Year(OrderDate) as Ano,
Month(OrderDate) as Mes,
sum(extendedAmount) as total_vendido
From FactResellerSales
group by Year(OrderDate), Month(OrderDate)
order by total_vendido desc