select 
FirstName,
count(FirstName) as cont_nome -- Conta quantas vezes cada nome aparece

From DimEmployee
where Gender = 'M' -- Filtra apenas funcionários do sexo masculino
-- (o filtro acontece antes do agrupamento)

group by FirstName -- Agrupa os registros pelo nome
-- Cada nome vira um grupo

having count(FirstName) > 3 -- Filtra os grupos
-- Mantém apenas nomes que aparecem mais de 3 vezes

order by cont_nome