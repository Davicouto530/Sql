-- Inserindo e alterando colunas na tabela

select *
From Categoria
-- consulta para ver os dados atuais da tabela Categoria

alter table dbo.Categoria
add Subcategoria varchar(50)
-- adiciona uma nova coluna chamada Subcategoria
-- tipo varchar(50) = texto de até 50 caracteres

alter table dbo.Categoria
alter column Subcategoria int
-- altera a definição da coluna Subcategoria
-- aqui está alterando para número inteiro
-- quando precisa mudar tamanho ou tipo da coluna

alter table dbo.Categoria
drop column Categoria
-- remove a coluna "Subcategoria" da tabela
-- cuidado: apaga a coluna e todos os dados dela
