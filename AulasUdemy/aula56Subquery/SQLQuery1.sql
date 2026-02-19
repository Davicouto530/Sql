-- Filtrando com Rank/Dense Rank
-- usando SUBQUERY e TABELA TEMPORÁRIA

----- SUBQUERY (consulta dentro de outra) -----
select *
From ( -- começa uma subquery (consulta dentro de outra)
    
    select 
        EmployeeKey,
        Title as cargo,
        HireDate as contratação,

        dense_rank() over(order by HireDate, EmployeeKey) as posicao
        -- calcula a posição (ranking) antes de filtrar
        -- over() define como o rank será calculado (ordenação)

    From DimEmployee -- tabela base dos dados

) as dados -- nome obrigatório da subquery para poder usar fora

where posicao in (1,5,8)
-- aqui é a consulta principal filtrando o resultado da subquery
-- só mostra quem ficou nessas posições do ranking


----- TABELA TEMPORÁRIA -----
select 
EmployeeKey,
Title as cargo,
HireDate as contratação,

-- gera o ranking igual ao de cima
dense_rank() over(order by HireDate, EmployeeKey) as posicao

-- INTO cria uma tabela temporária com esse resultado
into ##tempposicao
From DimEmployee

-- consultando a tabela temporária criada
select *
From ##tempposicao

-- filtrando posições específicas do ranking
where posicao in (4,7,8)
