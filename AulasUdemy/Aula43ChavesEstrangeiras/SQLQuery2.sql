-- ALTER TABLE = altera uma tabela já existente no banco

alter table Teste.dbo.Vendas 
add constraint fk_produto foreign key (product_id) references Teste.dbo.Produto (id);
-- FOREIGN KEY (chave estrangeira) = coluna que aponta para outra tabela
-- (product_id) = coluna da tabela Vendas que guarda o id do produto
-- REFERENCES Produto(id) = indica que ela usa o id da tabela Produto
-- isso cria relacionamento e impede venda de produto inexistente
-- chave estrangeira é uma coluna que referencia a chave primária de outra tabela
-- product_id passa a depender do id da tabela Produto, garante que só existam vendas de produtos cadastrados

alter table Teste.dbo.Produto 
add constraint fk_categoria foreign key (id_categoria) references Teste.dbo.Categoria (id);
-- (id_categoria) = coluna que guarda a categoria do produto
-- REFERENCES Categoria(id) = só aceita categorias que existem
-- mantém os dados corretos e relacionados
-- cria uma chave estrangeira na tabela Produto id_categoria referencia
-- o id da tabela Categoria garante que o produto tenha uma categoria válida

/*
alter table Teste.dbo.Vendas drop constraint fk_produto;
remove a chave estrangeira
o banco deixa de validar se o produto existe
*/
