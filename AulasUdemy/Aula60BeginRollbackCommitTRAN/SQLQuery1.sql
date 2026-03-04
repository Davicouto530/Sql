-- BEGIN TRAN | inicia transação
-- ROLLBACK TRAN | Cancelar transação
-- COMMIT TRAN | Salvar transação

-------- UPDATE --------
use Teste

select * from dbo.Produto where id = 2

update dbo.Produto SET nome = 'Calça', id_categoria = 0 where id = 2 
GO

-------- UPDATE com segurança na transação --------
select * from dbo.Produto

BEGIN TRAN -- Inicia transação (Executar antes de iniciar transação)
update dbo.Produto SET nome = 'Calça apertadinha', id_categoria = 1 where id = 2

-- Depois que iniciou a transação tem que fazer um dos dois abaixo, cancela ou salva
ROLLBACK TRAN -- | Cancelar transação
COMMIT TRAN -- | Salvar transação