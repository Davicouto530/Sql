select * from ##regiao
select * from ##estado
select * from ##municipio

-- consulta estruturada em todas as tabelas
select 
m.id		as id_municipio,
m.codigo	as cod_municipio,
m.nome		as nome_municipio,
m.uf		as uf_municipio,
e.CodigoUf	as cod_UF,
e.Uf		as UF,
e.Nome		as nome_estado,
e.Regiao	as cod_regiao,
r.id		as id_regiao,
r.nome		as nome_estado
from ##municipio as m 
left join ##estado as e on m.uf = e.uf
left join ##regiao as r on e.regiao = r.id 