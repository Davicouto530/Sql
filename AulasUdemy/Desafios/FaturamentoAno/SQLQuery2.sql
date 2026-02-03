-- Tarefa 1 – Faturamento por Ano

-- Extraia o ano da data do pedido (OrderDate) e me mostre:
-- Ano
-- Faturamento total no ano (soma do ExtendedAmount)
-- Ordene do maior faturamento para o menor.

select
Year(OrderDate) as Ano,
sum(ExtendedAmount) as soma
From FactResellerSales
group by Year(OrderDate)
order by 2 desc

