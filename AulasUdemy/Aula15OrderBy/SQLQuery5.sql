select 
EmployeeKey,
FirstName,
LastName,
MiddleName
From DimEmployee

-- order by FirstName desc
-- Ordena pelo primeiro nome em ordem decrescente (Z → A)

-- order by FirstName, MiddleName
-- Ordena primeiro pelo nome e depois pelo nome do meio

order by 2, 4
-- Ordena pelo número das colunas no SELECT
-- 2 = FirstName
-- 4 = MiddleName
-- Ordem padrão: crescente (ASC)

