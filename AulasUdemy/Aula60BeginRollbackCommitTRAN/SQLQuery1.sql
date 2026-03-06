-- BEGIN TRAN | inicia uma transação (abre um bloco de alterações no banco)
-- ROLLBACK TRAN | cancela todas as alterações feitas na transação
-- COMMIT TRAN | confirma e salva definitivamente as alterações no banco

-------- UPDATE --------
use Teste
-- define que os comandos serão executados no banco "Teste"

select * from dbo.Produto where id = 2
-- consulta o produto de id 2 para ver os dados antes da alteração

update dbo.Produto 
SET nome = 'Calça', id_categoria = 0 
where id = 2 
-- altera os dados do produto com id 2
-- muda o nome e a categoria

GO
-- separa os blocos de execução no SQL Server

-------- UPDATE com segurança na transação --------
select * from dbo.Produto
-- mostra todos os produtos antes da alteração

BEGIN TRAN 
-- inicia uma transação para testar a alteração com segurança

update dbo.Produto 
SET nome = 'Calça apertadinha', id_categoria = 1 
where id = 2
-- atualiza o produto, mas ainda não salva definitivamente

-- Depois que iniciou a transação tem que fazer um dos dois abaixo
ROLLBACK TRAN 
-- cancela a alteração feita e volta os dados como estavam

COMMIT TRAN 
-- confirma a alteração e salva no banco de dados

-- select * from dbo.Produto with (nolock)
-- consulta sem travar a tabela (usado para leitura rápida)

-------- DELETE --------
use Teste

select * from dbo.Produto where id = 2
-- verifica qual registro será apagado

delete dbo.Produto where id = 2
-- remove o produto com id 2 da tabela

-------- DELETE com segurança na transação --------
select * from dbo.Produto where id in(1,3,4,5,6,14)
-- mostra os produtos que serão apagados

BEGIN TRAN 
-- inicia uma transação para testar o delete

delete dbo.Produto 
where id in(1,3,4,5,6,14)
-- apaga vários produtos de uma vez usando IN

-- Depois que iniciou a transação tem que fazer um dos dois abaixo
ROLLBACK TRAN 
-- cancela a exclusão e recupera os dados

COMMIT TRAN 
-- confirma a exclusão e remove definitivamente

-------- INSERT --------
use Teste

select * from dbo.Produto
-- mostra os produtos atuais

insert into dbo.Produto (id,nome,id_categoria) 
values(50, 'Camisa apertadinha', 10)
-- insere um novo produto na tabela

delete dbo.Produto where id = 50
-- remove o produto inserido (usado aqui só para teste)

-------- INSERT com segurança na transação --------
select * from dbo.Produto
-- consulta os produtos antes da inserção

BEGIN TRAN 
-- inicia uma transação

insert into dbo.Produto (id,nome,id_categoria) 
values(50, 'Camisa apertadinha', 10)
-- adiciona um novo registro, mas ainda não está salvo definitivamente

-- Depois que iniciou a transação tem que fazer um dos dois abaixo
ROLLBACK TRAN 
-- cancela a inserção e o registro não é salvo

COMMIT TRAN 
-- confirma a inserção e salva o novo registro no banco