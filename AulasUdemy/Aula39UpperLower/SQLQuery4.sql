-- Funções UPPER e LOWER

select 
UPPER(FirstName) as maiusculo,
-- UPPER deixa todo o texto em letra maiúscula

LOWER(LastName) as minusculo
-- LOWER deixa todo o texto em letra minúscula

From DimEmployee