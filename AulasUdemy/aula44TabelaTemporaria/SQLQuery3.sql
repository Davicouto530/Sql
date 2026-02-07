-- Tabelas temporárias

select *
INTO ##tb_temp
-- SELECT INTO cria uma nova tabela a partir de um SELECT
-- Aqui ele está copiando todos os dados da tabela Categoria
-- e jogando dentro da tabela temporária ##tb_temp

-- "#"  = tabela temporária LOCAL (só existe na sua sessão/conexão)
-- "##" = tabela temporária GLOBAL (outras sessões conseguem ver)

From Categoria

select *
From ##tb_temp
-- Consulta normal na tabela temporária criada
-- Serve para verificar os dados copiados

-- Como apagar a tabela temporária
--  drop table ##tb_temp
-- Remove a tabela temporária manualmente
-- (senão ela some sozinha quando a sessão fecha, no caso da local)
