-- usando tabela temporária global para juntar dados entre bancos diferentes

select 
T1.id as id_venda,   -- pega o id da venda na tabela Vendas
T2.nome              -- pega o nome do produto da tabela temporária
From Ecommece.dbo.Vendas as T1
-- tabela principal de vendas do banco "Ecommece"

left join ##temp_produto as T2 on T1.product_id = T2.id
-- faz um LEFT JOIN com a tabela temporária global
-- liga pelo product_id da venda com o id do produto
-- LEFT garante que todas as vendas apareçam, mesmo se não achar produto

use Teste
-- muda o contexto para o banco "Teste"

select *
into ##temp_produto
From Teste.dbo.Produto
-- cria a tabela temporária global ##temp_produto
-- copia estrutura + dados da tabela Produto para ela

select *
From ##temp_produto
-- mostra todos os dados da tabela temporária
-- aqui dá pra conferir se os produtos foram copiados

-- Apagando a tabela 
-- drop table ##temp_produto
