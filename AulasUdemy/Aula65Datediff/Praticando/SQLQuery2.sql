-- Praticando DATEDIFF

-- Relatório com as quantidades de pessoas por faixa etária 

-- Case + Subselect

select 
count(EmployeeKey) as quantidade,
-- COUNT conta quantos funcionários existem

faixa_etaria
-- coluna com a faixa de idade

From (

select 
EmployeeKey,
-- id do funcionário

case
	when datediff(year,BirthDate, getdate()) between 0 and 20 then '0 a 20 Anos'
	-- calcula a idade com DATEDIFF e classifica entre 0 e 20 anos

	when datediff(year,BirthDate, getdate()) between 21 and 40 then '21 a 40 Anos'
	-- classifica entre 21 e 40 anos

	when datediff(year,BirthDate, getdate()) between 41 and 60 then '41 a 60 Anos'
	-- classifica entre 41 e 60 anos

	else '+ de 60 Anos' 
	-- acima de 60 anos

end as faixa_etaria
-- cria uma coluna com a faixa etária de cada funcionário

From DimEmployee
-- tabela de funcionários

) as tabela_qnt
-- subquery: cria uma "tabela temporária" com id e faixa etária

group by faixa_etaria
-- agrupa pelos tipos de faixa etária
-- para contar quantas pessoas existem em cada faixa