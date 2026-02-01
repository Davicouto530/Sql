-- Função de agregação group by (depois do from) - Count MIN MAX SUM AVG	

select
ProductKey,
min(ExtendedAmount) as minimo, -- Retorna o valor minimo dessa coluna
max(ExtendedAmount) as maximo, -- Retorna o valor maximo dessa coluna
sum(ExtendedAmount) as soma, -- Retorna a soma dos valores dessa coluna
avg(ExtendedAmount) as media -- Retorna média dos valores dessa coluna

From FactResellerSales
group by ProductKey