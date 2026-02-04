-- Join ou inner join = relaciona dados que tenham valores iguais nas duas tabelas,
-- se não tiver correspondência nas duas, não aparece no resultado

-- Left join = prioriza a primeira tabela (T1),
-- traz tudo da T1 e só o que combinar da T2

-- Right join = prioriza a segunda tabela (T2),
-- traz tudo da T2 e só o que combinar da T1

-- Full join = traz tudo das duas tabelas,
-- mesmo se não tiver correspondência (vai aparecer NULL)

select -- * traria todas as colunas das duas tabelas
t1.order_id,
t1.quantity, -- selecionando algumas colunas da T1
t2.customer_id,
t2.status -- selecionando algumas colunas da T2

From Ecommece.dbo.Vendas as T1 -- tabela Vendas apelidada de T1
join Ecommece.dbo.Ordens as T2 on t1.order_id = t2.id 
-- o JOIN está ligando as tabelas
-- o ON define a condição da ligação
-- quando order_id da T1 for igual ao id da T2,
-- ele junta as informações das duas tabelas

-- left join Ecommece.dbo.Ordens as T2 on t1.order_id = t2.id 
-- traz todas as linhas da T1, mesmo sem correspondência na T2

-- right join Ecommece.dbo.Ordens as T2 on t1.order_id = t2.id 
-- traz todas as linhas da T2, mesmo sem correspondência na T1

-- full join Ecommece.dbo.Ordens as T2 on t1.order_id = t2.id
-- traz todas as linhas das duas tabelas,
-- quando não tiver correspondência aparece NULL
