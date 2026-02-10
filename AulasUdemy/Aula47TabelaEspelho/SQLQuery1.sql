-- criando uma tabela cópia de outra

use Teste
-- usa o banco Teste

select * 
into dbo.CategoriaAula 
From Teste.dbo.Categoria 
where id in (0,1,2,3)
-- cria a tabela CategoriaAula copiando estrutura e dados
-- copia só os registros com id 0,1,2,3

select * 
From CategoriaAula
-- confere os dados copiados

drop table dbo.CategoriaAula
-- apaga a tabela criada
