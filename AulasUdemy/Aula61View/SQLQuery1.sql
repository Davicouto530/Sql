-- VIEW = é uma consulta salva no banco de dados
-- funciona como uma "tabela virtual", baseada em um SELECT
-- não guarda dados, apenas mostra o resultado da consulta

-- create view = cria uma view
create view VW_producao as
select 
EmployeeKey,
LastName,
Title,
Phone,
EmailAddress
From dbo.DimEmployee
where DepartmentName = 'Production'
-- cria uma view que mostra apenas funcionários do departamento Production

select * from VW_producao
-- consulta a view como se fosse uma tabela normal

------------------------------------------------

-- alter view = altera uma view existente
create or alter view VW_producao as 
select 
EmployeeKey,
LastName,
Title,
Phone,
EmailAddress
From dbo.DimEmployee
where DepartmentName = 'Marketing'
-- modifica a view para mostrar funcionários do departamento Marketing

select * from VW_producao
-- executa a view novamente com a nova regra

------------------------------------------------

-- drop view = remove a view do banco
drop view VW_producao
-- apaga a view, mas não apaga os dados da tabela original