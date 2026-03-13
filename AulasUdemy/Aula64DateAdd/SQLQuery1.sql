select dateadd(year,2,getdate())
-- DATEADD adiciona ou remove tempo de uma data
-- year define que a alteração será em anos
-- 2 é a quantidade adicionada na data atual (GETDATE)

select dateadd(year,-1,getdate())
-- número negativo remove tempo da data
-- aqui está diminuindo 1 ano da data atual

select cast(dateadd(year,1,getdate()) as date)
-- adiciona 1 ano na data atual
-- CAST converte o resultado para o tipo DATE (remove a hora)

select convert(varchar, dateadd(year,1,getdate()),103)
-- adiciona 1 ano na data atual
-- CONVERT transforma a data em texto
-- 103 mostra no formato brasileiro (dd/mm/yyyy)