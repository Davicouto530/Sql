-- Função Case ( Caso quando ) Criando nova coluna condicional

-- Case = caso 
-- When = quando
-- then = então
-- else = senão

-- quando valor total de vendas maior que 5 milhões então bateu a meta

select 
EmployeeKey, -- identifica o funcionário
sum(ExtendedAmount) as venda, -- soma o valor total de vendas de cada funcionário
case -- cria a coluna "meta" baseada no total de vendas
	when sum(ExtendedAmount) < 2000000 then 'Ruim' -- vendas menores que 2 milhões
	when sum(ExtendedAmount) between 2000000 and 5000000 then 'Médio' -- vendas entre 2 e 5 milhões
	when sum(ExtendedAmount) > 5000000 then 'Promoção' -- vendas maiores que 5 milhões

	end as meta -- Finaliza a coluna nova e coloca o nome "meta"

From FactResellerSales -- tabela de vendas
group by EmployeeKey -- agrupa os dados por funcionário para calcular a soma
order by 2 -- ordena a nova coluna