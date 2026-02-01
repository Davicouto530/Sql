select * 

From DimCustomer

where FirstName not in ( 'jon', 'Lauren', 'Carol' )
and EnglishEducation not in ( 'High School', 'Partial College' )
and SpanishEducation not in ( 'Profesional', 'Gestión' )

order by EnglishEducation