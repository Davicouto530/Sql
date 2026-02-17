-- Funções de ranking (classificar linhas)

select 
EmployeeKey, -- id do funcionário
Title as cargo, -- cargo do funcionário
HireDate as contratacao, -- data de contratação

-- RANK():
-- cria um ranking pela data de contratação
-- se duas pessoas têm a mesma data, elas recebem o mesmo rank
-- e o próximo número é pulado (ex: 1,2,2,4)
rank() over(order by HireDate) as rank,

-- DENSE_RANK():
-- parecido com o rank
-- mesma data = mesmo número
-- mas NÃO pula números (ex: 1,2,2,3)
dense_rank() over(order by HireDate) as dense_rank,

-- OVER():
-- define como o ranking será calculado
-- dentro dele usamos ORDER BY para dizer a ordem do ranking

-- () parênteses:
-- servem para passar a regra da função
-- ex: order by HireDate = ranking pela data

-- PARTITION BY (comentado):
-- separa o ranking por grupos (ex: por cargo)
-- o ranking reinicia dentro de cada cargo
--dense_rank() over(partition by Title order by HireDate) as dense_rank,

-- ROW_NUMBER():
-- dá um número único para cada linha
-- nunca repete, mesmo com datas iguais
row_number() over(order by HireDate) as numlinha

From DimEmployee
