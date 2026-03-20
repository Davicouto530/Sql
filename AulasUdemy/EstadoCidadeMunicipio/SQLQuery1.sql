select * from regiao
select * from estado
select * from municipio

-- consulta estruturada resumida em todas as tabelas
select 
m.id		as id_municipio,
m.codigo	as cod_municipio,
m.nome		as nome_municipio,
e.Uf		as UF_estado,
e.Nome		as nome_estado,
r.nome		as nome_regiao
into Dados_Sp from municipio as m 
left join estado as e on m.uf = e.uf
left join regiao as r on e.regiao = r.id 
where e.UF = 'Sp'

select * from Dados_Sp

-- drop table Dados_Sp
-- drop table Dados_Completos