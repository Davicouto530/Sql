-- Função de agregação Group By Count MIN MAX SUM AVG

-- Retorna o menor valor de venda da coluna ExtendedAmount
-- min(ExtendedAmount) as minimo

-- Retorna o maior valor de venda da coluna ExtendedAmount
-- max(ExtendedAmount) as maximo

-- Soma todas as vendas e retorna o total faturado
-- sum(ExtendedAmount) as faturamento

select 
avg(ExtendedAmount) as media 
-- Calcula a média de todas as vendas da coluna ExtendedAmount
From FactResellerSales