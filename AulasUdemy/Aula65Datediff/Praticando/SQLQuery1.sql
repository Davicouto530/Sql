-- Praticando DATEDIFF

select 
EmployeeKey,
FirstName,
BirthDate,
datediff(year,BirthDate, getdate()) as idade,
-- DATEDIFF calcula a diferença entre duas datas
-- aqui calcula a idade em anos (nascimento até hoje)

case
	when datediff(year,BirthDate, getdate()) between 0 and 20 then '0 a 20 Anos'
	-- se a idade estiver entre 0 e 20, classifica nessa faixa

	when datediff(year,BirthDate, getdate()) between 21 and 40 then '21 a 40 Anos'
	-- se estiver entre 21 e 40

	when datediff(year,BirthDate, getdate()) between 41 and 60 then '41 a 60 Anos'
	-- se estiver entre 41 e 60

	else '+ de 60 Anos' 
	-- qualquer valor acima disso

end as faixa_etaria
-- cria uma nova coluna classificando os funcionários por faixa de idade

From DimEmployee
order by 4