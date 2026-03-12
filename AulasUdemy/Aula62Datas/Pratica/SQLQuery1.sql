-- Prática de datas com relatório em formato inteiro

select 
datepart(day,created_at) as dia,
-- DATEPART(day, created_at) pega apenas o DIA da data
-- o resultado aparece em formato número (1,2,3...)

count(id) as qnt_vendas
-- COUNT conta quantos registros existem
-- aqui está contando quantas vendas aconteceram em cada dia

From dbo.Ordens 

where year(created_at) = 2019
-- filtra apenas registros do ano de 2019

and month(created_at) = 1
-- filtra apenas registros do mês 1 (Janeiro)
-- ou seja, o WHERE já está especificando o ano e o mês

group by datepart(day,created_at)
-- agrupa os dados pelo dia para mostrar
-- quantas vendas aconteceram em cada dia de Janeiro de 2019