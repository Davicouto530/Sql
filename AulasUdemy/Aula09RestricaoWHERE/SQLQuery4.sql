select *
from DimCustomer

--where FirstName = 'Blake' -> Usa para quando quiser pesquisar só um critério

where EnglishEducation in ( 'Bachelors', 'High School' )
and SpanishOccupation in ( 'Administrativo', 'Profesional' )

order by EnglishEducation