use Teste -- seleciona o banco de dados que vai ser usado
create table Categoria (
id int primary key not null, 
-- id único do produto (PK não repete e não pode ser nulo)

nome varchar(50)
-- nome do produto, texto até 50 caracteres e obrigatório
)

select *
From Teste.dbo.Categoria 

-- aqui está cadastrando os produtos
insert into  [dbo].[Categoria] (Id,nome) values(0,'Moda e Acessórios')
insert into  [dbo].[Categoria] (Id,nome) values(1,'Cosméticos e Perfumaria')
insert into  [dbo].[Categoria] (Id,nome) values(2,'Eletrodomésticos')
insert into  [dbo].[Categoria] (Id,nome) values(3,'Livros')
insert into  [dbo].[Categoria] (Id,nome) values(4,'Celulares')
insert into  [dbo].[Categoria] (Id,nome) values(5,'Informática')
insert into  [dbo].[Categoria] (Id,nome) values(6,'Casa e Decoração')
insert into  [dbo].[Categoria] (Id,nome) values(7,'Eletrônicos')
insert into  [dbo].[Categoria] (Id,nome) values(8,'Esporte e Lazer')
insert into  [dbo].[Categoria] (Id,nome) values(9,'Brinquedos e Games')
