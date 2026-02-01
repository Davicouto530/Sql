-- Funções de agregação Group BY Count MIN MAX SUM AVG

select 
ProductKey

From dbo.FactResellerSales

group by ProductKey
-- Agrupa todas as vendas pelo código do produto
-- Cada ProductKey aparece apenas uma vez no resultado

order by 1

