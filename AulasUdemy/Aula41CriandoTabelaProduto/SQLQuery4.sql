use Teste
-- seleciona o banco de dados que vai ser usado

create table Produto (
id int primary key not null, 
-- id único do produto (PK não repete e não pode ser nulo)

nome varchar(50) not null,
-- nome do produto, texto até 50 caracteres e obrigatório

id_categoria int not null
-- id da categoria do produto (liga com tabela de categorias)
)

select * 
from Teste.dbo.Produto
-- mostra todos os dados da tabela Produto

-- aqui está cadastrando os produtos
-- categorias diferentes são identificadas pelo id_categoria
insert into [dbo].[Produto] (Id,nome,id_categoria) values (0,'Sapato',0)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (1,'Bolsa',0)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (2,'Calça',0)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (3,'Camisa',0)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (4,'Vestido',0)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (5,'Perfume',1)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (6,'Creme de Barbear',1)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (7,'Hidratante',1)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (8,'Shampoo',1)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (9,'Protetor Solar',1)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (10,'Geladeira',2)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (11,'Fogão',2)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (12,'TV',2)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (13,'Máquina de Lavar',2)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (14,'Máquina de Secar',2)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (15,'O Romance Exagerado',3)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (16,'Suspense Demais',3)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (17,'Terror Aterrorizante',3)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (18,'A Comédia Engraçada',3)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (19,'A História de SQL',3)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (20,'Ai-Fone',4)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (21,'Galáxia R10',4)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (22,'Chiai-homi',4)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (23,'Ruaei',4)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (24,'Nóquia',4)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (25,'Mouse',5)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (26,'Teclado',5)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (27,'Pen-Drive',5)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (28,'Impressora',5)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (29,'HD Externo',5)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (30,'Poltrona',6)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (31,'Almofada',6)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (32,'Cadeira',6)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (33,'Sofá',6)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (34,'Mesa',6)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (35,'Video-Game',7)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (36,'Máquina Fotográfica',7)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (37,'Notebook',7)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (38,'PC',7)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (39,'Secador de Cabelo',7)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (40,'Chuteira',8)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (41,'Tornozeleira',8)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (42,'Raquete',8)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (43,'Bola',8)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (44,'Pebolim',8)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (45,'Futebol 2020',9)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (46,'Iôiô',9)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (47,'Peão',9)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (48,'Bey-Blade',9)
insert into [dbo].[Produto] (Id,nome,id_categoria) values (49,'Casinha de Boneca',9)

