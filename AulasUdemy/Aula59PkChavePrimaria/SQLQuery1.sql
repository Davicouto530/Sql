use Teste
-- define que os comandos serão executados no banco "Teste"

alter table Teste.dbo.Vendas add constraint PK_venda primary key (id)
-- adiciona uma chave primária na tabela Vendas
-- PK_venda é o nome da constraint (regra)
-- primary key (id) define que a coluna id será identificador único
-- não permite valores repetidos nem nulos

alter table Teste.dbo.Produto add constraint PK_produto primary key (id)
-- cria a chave primária da tabela Produto
-- garante que cada produto tenha um id único

alter table Teste.dbo.Categoria add constraint PK_categoria primary key (id)
-- cria a chave primária da tabela Categoria
-- impede duplicidade na coluna id

-- Adicionar FK FOREIGN KEY

alter table Teste.dbo.Vendas add constraint fk_produto foreign key (product_id) 
references dbo.Produto (id)
-- Adicionando chave estrangeira 

alter table Teste.dbo.Produto add constraint fk_categoria foreign key (id_categoria) 
references dbo.Categoria (id)
-- Adicionando chave estrangeira 

-- Apagar PK e FK 

alter table Teste.dbo.Categoria drop constraint PK_categoria
-- remove uma constraint de PK e FK da tabela