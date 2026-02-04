-- estou trazendo dados de duas tabelas diferentes (Acessos e Compras)
-- que têm relação pelo usuário

select distinct -- distinct para não repetir usuários iguais
T1.user_id, -- id do usuário na tabela de acessos
T1.user_name, -- nome do usuário
T2.user_id -- id do usuário na tabela de compras (para mostrar que bate com a outra)

From Vendas.dbo.Acessos as T1 -- tabela que guarda quem acessou o sistema

join Vendas.dbo.Compras as T2 on T1.user_id = T2.user_id 
-- aqui estou ligando as tabelas pelo user_id
-- porque ele é o identificador único do usuário nas duas tabelas
-- ou seja, o mesmo usuário que acessa é o que compra
-- se o user_id for igual nas duas, o SQL entende que é a mesma pessoa
