-- Rank + Subquery + Partition + Left Join

select 
LastName,            -- sobrenome do funcionário
EnglishProductName,  -- nome do produto
venda,               -- total vendido
posicao              -- posição no ranking

From ( -- começa a subquery

select 
t1.EmployeeKey, 
t2.LastName, 
t3.EnglishProductName,

sum(t1.SalesAmount) as venda,
-- soma o total vendido por funcionário e produto

dense_rank() over(partition by t1.EmployeeKey order by sum(t1.SalesAmount) desc) as posicao
-- partition by EmployeeKey = cria ranking separado para cada funcionário
-- order by sum desc = maior venda fica na posição 1

From FactResellerSales as T1
-- tabela de vendas (base principal)

left join DimEmployee as T2 on t1.EmployeeKey = t2.EmployeeKey
-- liga vendas com funcionário para trazer o sobrenome

left join DimProduct as T3 on t1.ProductKey = t3.ProductKey
-- liga vendas com produto para trazer o nome do produto

group by t1.EmployeeKey, t2.LastName, t3.EnglishProductName
-- agrupa para conseguir calcular a soma corretamente

) as dados -- nome obrigatório da subquery

where posicao = 1
-- filtra apenas o produto mais vendido de cada funcionário