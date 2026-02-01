-- Função de agregação Group BY Count MIN MAX SUM AVG
 
 select 
 ProductKey, -- serve para saber qual venda pertence a qual produto
 COUNT(ProductKey) as quantidade_venda -- Conta quantas vendas existem para cada ProductKey
 From FactResellerSales

 group by ProductKey
 -- Agrupa todas as vendas pelo ProductKey
 -- Todas as linhas com o mesmo ProductKey viram um único grupo

 order by 2