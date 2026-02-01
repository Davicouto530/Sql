-- Função Case ( Caso quando ) criando nova coluna condicional

-- Case = caso
-- when = quando
-- then = então
-- else = senão

select 
EnglishProductSubcategoryName as sub_categoria, -- renomeia o nome da subcategoria
case -- cria a coluna "categoria" baseada em condições

 -- se a subcategoria estiver dentro dessa lista, classifica como 'Sport'
when EnglishProductSubcategoryName in ('Mountain Bikes', 'Road Bikes', 'Touring Bikes') then 'Sport'
when EnglishProductSubcategoryName =  'Forks' then 'Casa' -- se a subcategoria for exatamente 'Forks', classifica como 'Casa'

else 'sem_categoria' -- se não atender nenhuma condição acima, recebe 'sem_categoria'

end as categoria -- END finaliza o bloco do CASE

From DimProductSubcategory