-- Atualizando dados só quando atender certas condições

select *
into tb_temp_employee
From DimEmployee
-- cria uma cópia da tabela de funcionários para testes

select 
EmployeeKey,
FirstName,
LastName,
MiddleName,
StartDate,
EndDate,
case when EndDate is null then 'Ativo' else 'Demitido' end as 'Status'
-- cria uma coluna "Status":
-- sem EndDate = Ativo
-- com EndDate = Demitido
From tb_temp_employee

-- Update com restrições
update tb_temp_employee
set MiddleName = 'R'
-- define "R" como nome do meio

where EmployeeKey in (3,4,5)
-- só para esses IDs

and MiddleName is null 
and EndDate is null
-- só atualiza se o nome do meio for nulo
-- e se o funcionário ainda estiver ativo (sem EndDate)

-- Update com BETWEEN
update tb_temp_employee
set EndDate = getdate()
-- coloca a data atual como data de saída

where EmployeeKey between 100 and 120
-- aplica para IDs entre 100 e 120
