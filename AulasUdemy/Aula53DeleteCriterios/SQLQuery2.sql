-- Cria uma cópia da tabela DimEmployee em tb_temp
select *
into tb_temp
from DimEmployee

select 
EmployeeKey,
FirstName,
LastName,
MiddleName,
StartDate,
EndDate,
case when EndDate is null then 'Ativo' else 'Demitido' end as 'Status'
-- Consulta os dados e cria a coluna calculada "Status"
-- Se EndDate for nulo = funcionário ativo
-- Se tiver data = funcionário demitido
from tb_temp
order by StartDate

-- Apaga funcionários que já têm EndDate
-- (ou seja, que já foram desligados)
delete from tb_temp
where EndDate is not null

-- Apaga registros onde o MiddleName é nulo
-- (remove quem não tem nome do meio)
delete from tb_temp
where MiddleName is null

-- Apaga funcionários com chave entre 1 e 20
-- BETWEEN inclui os dois valores (1 e 20)
delete from tb_temp
where EmployeeKey between 1 and 20

-- Apaga funcionários que começaram entre essas datas
-- (intervalo de datas específico)
delete from tb_temp
where StartDate between '2007-10-27' and '2011-12-29'

drop table tb_temp
