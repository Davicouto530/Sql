-- having filtros de agrupamentos

-- Where filtra colunas
-- Havning filtra agrupamentos

select 
EmployeeKey,
sum(ExtendedAmount) as soma -- Soma o valor total de vendas de cada funcionário

From FactResellerSales
where EmployeeKey in ('281','288') -- Filtra apenas os registros desses funcionários
group by EmployeeKey -- Agrupa as vendas por funcionário
having sum(ExtendedAmount) > 4000000 -- Retorna apenas funcionários cujo total de vendas ultrapassa 4.000.000