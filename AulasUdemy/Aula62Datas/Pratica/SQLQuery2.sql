-- Praticando datas, relatório simples de ordens

select 
DATENAME(year,created_at) as ano_texto,
-- DATENAME(year, created_at) pega o ANO da data
-- retorna em formato de texto

DATENAME(month,created_at) as mes_texto,
-- pega o MÊS da data created_at
-- também retorna como texto (ex: January, February)

count(id) as quantidade
-- COUNT conta quantos registros existem
-- aqui conta quantas ordens existem naquele mês/ano

--DATENAME(day,created_at) as dia_texto
-- se usar isso, mostraria o dia da data também

from dbo.ordens
-- tabela de onde os dados estão sendo buscados

group by DATENAME(year,created_at), DATENAME(month,created_at)
-- agrupa os dados por ano e mês, necessário porque estamos usando COUNT

order by 1,3