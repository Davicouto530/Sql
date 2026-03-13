select 
id,
-- id do registro da venda

cast(created_at as date) as dt_venda,
-- CAST converte a coluna created_at para o tipo DATE
-- isso remove a parte da hora e mostra apenas a data da venda

cast(dateadd(month, 2, created_at) as date) as dt_pagamento
-- DATEADD adiciona 2 meses na data created_at
-- simulando uma data de pagamento futura
-- depois o CAST converte para DATE para mostrar apenas a data

From dbo.Ordens
-- tabela de onde os dados das ordens estão sendo consultados