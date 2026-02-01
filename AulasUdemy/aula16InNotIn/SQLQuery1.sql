select *
From DimEmployee

--where EmployeeKey in (2, 5, 7)
-- IN: retorna apenas registros cujo valor esteja DENTRO da lista informada
-- Exemplo: só funcionários com EmployeeKey 2, 5 ou 7

where FirstName not in ('Guy', 'Roberto', 'Thierry')
-- NOT IN: exclui registros que tenham esses nomes
-- Ou seja, traz todos os funcionários EXCETO Guy, Roberto e Thierry

and DepartmentName not in ('Marketing', 'Production')
-- Exclui funcionários desses departamentos
-- Retorna apenas quem NÃO pertence a Marketing ou Production

order by DepartmentName