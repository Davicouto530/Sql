select top 5 -- pega só os 5 primeiros clientes

Translate(FirstName, 'j''e','t''u') as translate,
-- troca vários caracteres de uma vez:
-- tudo que for "j" vira "t" e tudo que for "e" vira "u"
-- a troca é por posição (1º com 1º, 2º com 2º...)

Replace(FirstName, 'j', 't') as replace,
-- troca um texto por outro, aqui todo "j" vira "t" no nome

Replace(Replace(Replace(FirstName, 'j', 'w'), 'e', 'a'), 'C', 'Z')
-- vários replaces encadeados, primeiro j→w, depois e→a, depois C→Z
-- faz substituições em etapas

From DimCustomer
-- tabela de clientes de onde vêm os nomes
