-- Conta quantos itens de venda baixa e venda alta existem em cada ordem

select 
    -- número da ordem de venda
    SalesOrderNumber as ordem_venda,

    -- conta quantas vendas tiveram valor menor que 3000
    -- o CASE retorna 1 apenas quando a condição é verdadeira
    count(case when ExtendedAmount < 3000 then 1 end) as venda_baixa,

    -- conta quantas vendas tiveram valor maior ou igual a 3000
    count(case when ExtendedAmount >= 3000 then 1 end) as venda_alta

-- tabela de vendas
From FactResellerSales

-- agrupa por ordem de venda para fazer a contagem corretamente
group by SalesOrderNumber

-- ordena pelo número de vendas baixas e depois pelas altas
order by 2, 3
-- Consulta de conferência para verificar os valores de uma ordem específica

select 
    SalesOrderNumber,
    SalesAmount
From FactResellerSales

-- filtra apenas a ordem informada
where SalesOrderNumber = 'SO51829'

-- ordena pelo valor da venda
order by 2