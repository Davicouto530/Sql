-- Função de restrição Where + valores nulos

select 
FirstName as Nome,
MiddleName as nome_do_meio,
LastName as Sobrenome,
AddressLine1 as Endereco1,
AddressLine2 as Endereco2

From dbo.DimCustomer

--where AddressLine2 is null -- Retorna registros onde o endereço complementar NÃO existe

where AddressLine2 is not null
-- Retorna apenas registros onde o endereço complementar EXISTE

and MiddleName is not null
-- Garante que o nome do meio também exista