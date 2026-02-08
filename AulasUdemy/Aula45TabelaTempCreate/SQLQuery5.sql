-- criando uma tabela temporária global para armazenar dados provisórios
create table ##tb_temp_manual(
id int,             -- coluna de número inteiro para identificar o registro
nome varchar(50)    -- coluna de texto até 50 caracteres para o nome
)

select * 
From ##tb_temp_manual
-- mostra todos os dados da tabela temporária

insert into ##tb_temp_manual (id, nome) values(1,'Caneca')
-- insere um registro na tabela temporária
-- id = 1 e nome = 'Caneca'

-- drop table ##tb_temp_manual
-- apaga a tabela temporária do banco
-- como é "##", ela é global e pode ser vista por outras sessões
