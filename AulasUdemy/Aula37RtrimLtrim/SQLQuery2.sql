-- Funções LTRIM e RTRIM servem pra limpar espaços em branco

-- LTRIM = remove espaços da esquerda
-- exemplo: '    davi' vira 'davi'

-- RTRIM = remove espaços da direita
-- exemplo: 'davi    ' vira 'davi' 

-- juntando os dois limpa dos dois lados
-- RTRIM(LTRIM('   davi   ')) tira todos espaços extras

select top 10 

LTRIM(FirstName) as nome,
-- limpa espaços antes do primeiro nome

RTRIM(MiddleName) as nome_meio,
-- limpa espaços depois do nome do meio

RTRIM(LTRIM(LastName)) as ultimonome
-- limpa espaços antes e depois do sobrenome

From DimEmployee
-- tabela de funcionários de onde vêm os nomes
