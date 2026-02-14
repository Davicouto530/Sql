-- Cria uma tabela temporária (cópia da DimEmployee)
-- SELECT INTO copia estrutura + dados
select *
into tb_temp
From DimEmployee

-- Visualiza todos os dados da tabela temporária
select *
From tb_temp

-- Consulta mostrando dados do funcionário + cálculos de tempo
select 
EmployeeKey,
FirstName,
LastName,
MiddleName,
StartDate,
EndDate,

-- Cria coluna "Status":
-- EndDate nulo = Ativo | com data = Demitido
case when EndDate is null then 'Ativo' else 'Demitido' end as 'Status',

-- Calcula há quanto tempo o funcionário está na empresa
DATEDIFF(year, StartDate,getdate()) as diferenca_ano,
DATEDIFF(month, StartDate,getdate()) as diferenca_mes,
DATEDIFF(day, StartDate,getdate()) as diferenca_dia
-- também pode usar hour, minute e second

From tb_temp
order by StartDate -- ordena pela data de início

delete from tb_temp
where DATEDIFF(year, StartDate, GETDATE()) = 16 
-- calcula quantos anos desde a contratação e filtra quem tem 16 anos de empresa
and EndDate is null 
-- garante que o funcionário ainda está ativo (não tem data de saída)

delete from tb_temp
where DATEDIFF(year, StartDate, GETDATE()) = 14 
-- filtra quem tem 14 anos de empresa
and EndDate is null -- somente os que ainda estão ativos

delete from tb_temp
where EndDate is not null 
-- remove todos que já foram demitidos (têm data de saída)
