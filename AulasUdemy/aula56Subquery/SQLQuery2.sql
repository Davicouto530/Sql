-- Rank + Subquery + Tabela Temporária

---------------- SUBQUERY ----------------
select *
from ( -- começa a subquery (consulta interna)

    select 
        EmployeeKey, -- funcionário
        
        sum(SalesAmount) as venda,
        -- soma total de vendas por funcionário
        
        dense_rank() over(order by sum(SalesAmount) desc) as posicao
        -- cria um ranking do maior para o menor valor de venda
        -- desc = maior venda fica em 1º lugar

    From FactResellerSales
    group by EmployeeKey
    -- agrupa por funcionário para poder somar as vendas

) as tb_dados -- nome obrigatório da subquery

where posicao between 1 and 10
-- consulta externa filtra apenas os 10 maiores vendedores

------------------------------------------------------

---------------- TABELA TEMPORÁRIA ----------------
select 
EmployeeKey,
sum(SalesAmount) as venda,
dense_rank() over(order by sum(SalesAmount) desc) as posicao
into ##tempaula
-- cria uma tabela temporária com o resultado já calculado
From FactResellerSales
group by EmployeeKey

select *
From ##tempaula
where posicao between 1 and 10
-- filtra na tabela temporária os 10 primeiros colocados