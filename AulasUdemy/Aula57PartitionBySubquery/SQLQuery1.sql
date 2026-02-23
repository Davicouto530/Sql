-- Rank + Subquery + Partition by

select *
From ( -- começa a subquery (consulta interna)

select 
EmployeeKey, -- funcionário
ProductKey,  -- produto

sum(SalesAmount) as vendas,
-- soma o total vendido por funcionário e produto

dense_rank() over(partition by EmployeeKey order by sum(SalesAmount)) as posicao
-- partition by EmployeeKey = cria um ranking separado para cada funcionário
-- order by sum(SalesAmount) = ordena as vendas dentro de cada funcionário
-- posição 1 será o menor valor de venda de cada funcionário

From FactResellerSales
group by EmployeeKey, ProductKey
-- agrupa por funcionário e produto para calcular a soma corretamente

) as dados -- nome obrigatório da subquery

where posicao = 1
-- filtra apenas os registros que ficaram em 1º lugar dentro de cada funcionário
-- ou seja, o produto com menor venda de cada funcionário