-- estou trazendo dados das tabelas de acessos (T1) e compras (T2)

select distinct -- distinct para não repetir usuários
T1.user_id, -- id do usuário que acessou
T1.user_name, -- nome do usuário
T2.user_id as id2, -- id do usuário na tabela de compras (apelidei de id2)
T2.price -- valor da compra

From Vendas.dbo.Acessos as T1 -- tabela de quem acessou o sistema

left join Vendas.dbo.Compras as T2 
on T1.user_id = T2.user_id
-- left join traz todos os acessos mesmo que não tenha compra
-- a ligação é pelo user_id, que identifica o mesmo usuário nas duas tabelas

where T2.user_id is null
-- aqui estou filtrando só quem NÃO tem compra
-- quando não existe compra, os campos da T2 ficam null
-- então isso mostra usuários que acessaram mas não compraram
