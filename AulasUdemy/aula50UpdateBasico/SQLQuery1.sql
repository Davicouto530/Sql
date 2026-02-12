-- Mudando valores (dados) dentro das linhas da tabela

select * 
into tb_temp
From Categoria
-- cria uma tabela nova chamada tb_temp copiando os dados da tabela Categoria

select *
From tb_temp
-- confere os dados que foram copiados para tb_temp

update tb_temp -- "update" = comando para alterar dados existentes
set nome = 'moda' -- "set" = define o novo valor da coluna
-- aqui está mudando as linhas da coluna "nome"
where id in (0,1,2,3)
-- "where" filtra quais linhas serão alteradas
-- só muda os registros com id 0,1,2,3

update tb_temp 
set nome = 'Sport'
-- muda o valor da coluna nome para "Sport"

where id in (4,5,6)
-- aplica a mudança apenas nos ids 4,5,6
