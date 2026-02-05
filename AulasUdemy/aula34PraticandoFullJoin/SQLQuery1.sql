-- estou juntando dados de cadastro, compras e acessos dos usuários

select distinct -- evita registros duplicados
T1.user_name as nome_cadastro, -- nome vindo da tabela de usuários (cadastro)
T1.id as id_cadastro, -- id do cadastro do usuário
T2.user_id as id_compra, -- id do usuário na tabela de compras
T3.user_id as id_acesso -- id do usuário na tabela de acessos

From Vendas.dbo.Usuarios as T1

Full join Vendas.dbo.Compras as T2 
on T1.id = T2.user_id
-- full join traz todo mundo, mesmo sem correspondência
-- liga o id do cadastro com quem fez compra

Full join Vendas.dbo.Acessos as T3 
on T1.id = T3.user_id
-- liga o id do cadastro com quem acessou o sistema

---------------------------------------------------
-- FILTROS POSSÍVEIS:
---------------------------------------------------

-- 1) Pessoas que se cadastraram, acessaram, mas NÃO compraram
where T3.user_id is not null and T2.user_id is null

-- 2) Pessoas que compraram mas NÃO acessaram
-- where T2.user_id is not null and T3.user_id is null

-- 3) Pessoas que se cadastraram mas NÃO compraram e NÃO acessaram
-- where T2.user_id is null and T3.user_id is null
