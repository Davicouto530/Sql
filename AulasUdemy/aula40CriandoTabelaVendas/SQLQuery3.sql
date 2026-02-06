/*
create table    = cria uma tabela no banco de dados
insert into     = insere registros (dados) dentro da tabela
truncate table  = apaga TODOS os dados da tabela, mas mantém a estrutura
drop table      = apaga a tabela inteira (estrutura + dados)
*/

use Teste
-- define que os comandos serão executados no banco de dados "Teste"

create table Vendas
(
id           int primary key not null,
-- "int" = tipo numérico inteiro
-- "primary key (PK)" = chave primária, identifica cada venda de forma única
-- "not null" = esse campo é obrigatório

product_id   int not null,
-- id do produto relacionado à venda
-- também é inteiro e obrigatório

cliente      varchar(50) null,
-- nome do cliente
-- varchar(50) permite até 50 caracteres
-- "null" significa que pode ficar vazio

data_compra  date not null,
-- data da compra
-- tipo "date" guarda apenas a data (sem hora)
-- não pode ser nula

valor_total  money
-- valor total da venda
-- tipo "money" usado para valores monetários
)

select *
From Teste.dbo.Vendas
-- consulta todos os dados da tabela Vendas

-- aqui está cadastrando
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(0,28,'Luana','11/07/2022',186)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(1,29,'Marta','06/05/2022',110)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(2,38,'Luana','07/08/2022',385)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(3,37,'Frida','04/04/2022',493)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(4,28,'Daniela','30/09/2022',186)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(5,18,'Romário','20/07/2022',20)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(6,24,'Marcelo','26/05/2022',2663)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(7,44,'Cristiano','01/07/2022',164)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(8,23,'Everton','12/09/2022',2795)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(9,6,'Gabriela','27/07/2022',15)
insert into Teste.dbo.Vendas(id,product_id,cliente,data_compra,valor_total)values(10,44,'Luan','28/02/2022',82)


truncate table Teste.dbo.Vendas
-- remove todos os registros da tabela rapidamente
-- não permite WHERE e não reseta a estrutura da tabela

-- drop table [Teste].dbo.Vendas
-- apaga a tabela Vendas completamente
-- depois disso ela deixa de existir no banco
