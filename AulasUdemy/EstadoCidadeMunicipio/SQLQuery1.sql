select * from ##regiao
select * from ##estado
select * from ##municipio

-- consulta estruturada em todas as tabelas
select 
m.id		as id_municipio,
m.codigo	as cod_municipio,
m.nome		as nome_municipio,
e.Uf		as UF,
e.Nome		as nome_estado,
r.nome		as nome_estado
into ##testeMun from ##municipio as m 
left join ##estado as e on m.uf = e.uf
left join ##regiao as r on e.regiao = r.id 

select * from ##testeMun
where uf_estado = 'Sp'