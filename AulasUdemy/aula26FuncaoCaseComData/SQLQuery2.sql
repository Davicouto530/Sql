-- Agrupa as vendas por data (ano, mês e dia) e classifica os valores em venda baixa ou alta

select 
    -- extrai o ano da data do pedido
    YEAR(OrderDate) as Ano,

    -- extrai o mês da data do pedido
    MONTH(OrderDate) as Mes,

    -- extrai o dia da data do pedido
    DAY(OrderDate) as Dia,

    -- conta quantas vendas foram menores que 3000
    count(case when ExtendedAmount < 3000 then 1 end) as venda_baixa,

    -- conta quantas vendas foram maiores ou iguais a 3000
    count(case when ExtendedAmount >= 3000 then 1 end) as venda_alta

-- tabela de vendas
From FactResellerSales

-- agrupa pelos campos de data para calcular corretamente as contagens
group by YEAR(OrderDate), MONTH(OrderDate), DAY(OrderDate)

-- ordena por ano, mês, dia e pelas contagens
order by 1, 2, 3, 4, 5

-------- Testando --------

-- Consulta de teste: analisa apenas o ano de 2011 agrupando por mês

select 
    -- extrai o mês da data
    MONTH(OrderDate) as Mes,

    -- conta vendas menores que 3000
    count(case when ExtendedAmount < 3000 then 1 end) as venda_baixa,

    -- conta vendas maiores ou iguais a 3000
    count(case when ExtendedAmount >= 3000 then 1 end) as venda_alta

From FactResellerSales

-- filtra apenas os registros do ano de 2011
where YEAR(OrderDate) = 2011

-- agrupa por mês
group by MONTH(OrderDate)

-- ordena pelo mês
order by 1