-- Começa com and = like 'and%'
-- Termina com na = like '%na'
-- tem em lugar no nome = like '%ja%'
-- limitar caracteres = like '%ja_'

select * 

From DimEmployee

-- where FirstName like 'and%'
-- Retorna nomes que começam com "and"

-- where FirstName like '%na'
-- Retorna nomes que terminam com "na"

-- where FirstName not like '%na'
-- Retorna nomes que NÃO terminam com "na"

-- where FirstName like '%ja%'
-- Retorna nomes que têm "ja" em qualquer parte do nome

where FirstName like '%ja_'
-- Retorna nomes que têm "ja" e exatamente 1 caractere depois

order by FirstName 