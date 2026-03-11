-- Horário Brasil

select SYSDATETIME() 
-- retorna a data e hora atual do sistema com mais precisão (inclui frações de segundos)

select CURRENT_TIMESTAMP 
-- retorna a data e hora atual do computador (equivalente ao GETDATE)

select GETDATE()
-- retorna a data e hora atual do sistema

------------------------------------------------

-- Horário Reino Unido (UTC)

select GETUTCDATE() 
-- retorna a data e hora atual no padrão UTC (horário base usado mundialmente)

select SYSDATETIMEOFFSET() 
-- retorna data, hora e também o fuso horário do sistema

select SYSUTCDATETIME() 
-- retorna data e hora atual no padrão UTC com mais precisão

------------------------------------------------

-- Formato texto

select DATENAME(YEAR,GETDATE())
-- retorna o ano da data atual em formato texto

select DATENAME(WEEKDAY,GETDATE()) as dia_semana
-- retorna o nome do dia da semana da data atual (ex: Monday, Tuesday)

------------------------------------------------

-- Formato inteiro

-- select year(nome_da_coluna)

select year(getdate()) as ano
-- extrai apenas o ano da data atual em formato número
-- também é possível extrair month (mês) e day (dia)

------------------------------------------------

-- Parte da data

-- select DATEPART(year, nome_da_coluna)

select DATEPART(year, getdate())
-- retorna uma parte específica da data em número
-- pode extrair: year, month, day, hour, minute, second e millisecond