-- Funções REPLICATE e REVERSE

select 
REPLICATE(FirstName,3) as repl,
-- REPLICATE repete o texto várias vezes
-- aqui ele repete o FirstName 3 vezes seguidas

REVERSE(LastName) as rev
-- REVERSE inverte a ordem do texto
-- o sobrenome fica escrito de trás pra frente

From DimEmployee
