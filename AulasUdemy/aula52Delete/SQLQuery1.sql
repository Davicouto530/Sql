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
-- Mostra dados e cria a coluna "Status"
-- (Ativo = EndDate nulo | Demitido = tem data)
from tb_temp

use AdventureWorksDW2019
delete from tb_temp
where EmployeeKey in (3,4,9)
-- DELETE apaga registros da tabela (não apaga a tabela)
-- O WHERE define quais linhas serão removidas
-- Aqui remove só os IDs 3, 4 e 9
-- Sem WHERE apagaria tudo
