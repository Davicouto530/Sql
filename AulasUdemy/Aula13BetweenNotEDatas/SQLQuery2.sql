-- Função between -Entre- (Dados entre 2 valores)
-- Between valor minimo e valor máximo

select *
From FactResellerSales

where SalesAmount not between 1000 and 5000
order by SalesAmount