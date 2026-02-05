-- Concat = Juntar textos

select top 5 -- pega só os 5 primeiros registros da tabela

CONCAT(FirstName, ' ', LastName) as nome_completo,
-- junta nome + sobrenome para formar o nome completo

CONCAT('O email de ', FirstName, ' é: ', EmailAddress),
-- cria uma frase já formatada mostrando o nome e o email do cliente

CONCAT('O endereço de ', FirstName, ' é: ', AddressLine1)
-- cria uma frase mostrando o nome e o endereço do cliente

From DimCustomer
