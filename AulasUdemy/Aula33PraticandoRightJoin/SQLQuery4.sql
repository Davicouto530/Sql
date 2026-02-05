-- estou cruzando as tabelas de Acessos e Compras

select distinct -- evita repetir registros
T2.user_name, -- nome do usuário (tabela Compras)
T2.user_id, -- id do usuário em Compras
T1.user_id as idtabela1, -- id do usuário em Acessos (apelido)
T1.type -- tipo de acesso

From Vendas.dbo.Acessos as T1

right join Vendas.dbo.Compras as T2 
on T1.user_id = T2.user_id
-- right join prioriza a tabela da direita (Compras)
-- traz todos que compraram, mesmo se não tiver acesso

where T1.user_id is null
-- aqui filtro só quem NÃO tem registro na tabela Acessos
-- ou seja: usuários que compraram mas não têm acesso registrado
