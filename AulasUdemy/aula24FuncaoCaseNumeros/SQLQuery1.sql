-- Função Case ( Caso quando ) Criando nova coluna condicional

-- Case = caso 
-- When = quando
-- then = então
-- else = senão

-- quando valor total de vendas maior que 5 milhões então bateu a meta

select 
EmployeeKey, -- identifica o funcionário
sum(ExtendedAmount) as venda, -- soma o valor total de vendas de cada funcionário
case -- cria a coluna "meta" para indicar se bateu a meta ou não
	when sum(ExtendedAmount) > 5000000 then 'Bateu_meta' -- se o total de vendas for maior que 5 milhões
	else 'não_bateu_meta' -- caso contrário

	end as meta -- Finaliza a coluna nova e coloca o nome "meta"

From FactResellerSales
group by EmployeeKey