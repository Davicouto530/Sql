-- Funcionários demitidos
select 
EmployeeKey,
FirstName,
HireDate,
EndDate
From DimEmployee
where EndDate is not null
-- mostra funcionários que já foram demitidos
-- EndDate tem valor quando existe data de saída da empresa

------------------------------------------------

-- Quantos anos ficaram na empresa
select 
EmployeeKey,
FirstName,
HireDate,
EndDate,
datediff(year,HireDate,EndDate) as tempo_empresa
-- DATEDIFF calcula a diferença entre duas datas
-- year define que a diferença será em anos
-- aqui calcula quantos anos o funcionário ficou na empresa

From DimEmployee
where EndDate is not null
-- apenas funcionários que já saíram

order by 5

------------------------------------------------

-- Quanto tempo tem o funcionário na empresa (ativo)
select 
EmployeeKey,
FirstName,
HireDate,
datediff(year,HireDate,getdate()) as tempo_empresa
-- calcula quantos anos o funcionário trabalha na empresa
-- usa GETDATE() porque ele ainda está ativo

From DimEmployee
where EndDate is null
-- apenas funcionários que ainda trabalham na empresa

order by tempo_empresa desc 
-- ordena do que tem mais tempo para o que tem menos

------------------------------------------------

-- Quantos anos tem os funcionários
select 
EmployeeKey,
FirstName,
BirthDate,
datediff(year,BirthDate,getdate()) as idade
-- calcula a idade do funcionário usando a data de nascimento

from DimEmployee
where EndDate is null
-- mostra apenas funcionários ativos

order by 4
-- ordena pela idade

------------------------------------------------

-- Descobrindo uma idade específica
select datediff(year, '2007-08-21', getdate())
-- calcula quantos anos se passaram entre a data informada e hoje
-- DATEDIFF serve para calcular diferença entre duas datas