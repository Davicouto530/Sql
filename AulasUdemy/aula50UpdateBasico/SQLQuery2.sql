-- Trabalhando status de funcionários com base na data de saída

select *
into tb_temp_employee
From DimEmployee
-- cria uma tabela nova (cópia) com os dados de funcionários
-- usada para testar sem mexer na tabela original

select 
EmployeeKey,
FirstName,
LastName,
MiddleName,
StartDate,
EndDate,
case 
    when EndDate is null then 'Ativo' 
    else 'Demitido' 
end as 'Status'
-- o CASE cria uma coluna calculada chamada "Status"
-- se EndDate for nulo = funcionário ainda está na empresa (Ativo)
-- se tiver data = já saiu (Demitido)

From tb_temp_employee

update tb_temp_employee
set EndDate = '11/02/2026'
-- update altera dados existentes
-- aqui está colocando uma data de saída

where EmployeeKey in (1,2,3)
-- só aplica a mudança nos funcionários 1,2,3
