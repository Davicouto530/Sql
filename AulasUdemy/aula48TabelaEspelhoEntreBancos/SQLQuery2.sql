-- criando uma tabela espelho usando dados de outro banco

use AdventureWorksDW2019
-- muda para o banco de origem dos dados

select 
    EmployeeKey, -- Só essas colunas vão para a tabela temporária
    ProductKey,
    ExtendedAmount
into ##temp_aula
From FactResellerSales
where EmployeeKey = 285
-- cria uma tabela temporária global (##temp_aula)
-- já copia estrutura + dados
-- filtra só as vendas do funcionário 285

use Teste
-- muda para o banco onde a cópia final vai ficar

select *
into dbo.dados_joao
From ##temp_aula
-- cria a tabela dados_joao no banco Teste
-- copiando tudo da tabela temporária

select *
From dbo.dados_joao
-- visualiza os dados copiados

drop table dbo.dados_joao
-- apaga uma tabela (provavelmente foi só teste)
-- aqui parece erro de nome, pois a tabela criada foi "dados_joao"
