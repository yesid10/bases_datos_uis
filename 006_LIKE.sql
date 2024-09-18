--Comando Like 
--Busca en los datos las palabras que coinciden con lo que queremos


--Obtiene los datos de la tabla usuarios que con tienen un 
--email con el texto '@gmail.com', el signo '%' indica que busque todo
SELECT * FROM usuarios WHERE email LIKE '%gmail.com'

--Obtiene todos los datos de la tabla usuarios que contienen el 
--nombre 'sara' en su parte inicial
SELECT * FROM usuarios WHERE email LIKE 'sara%'


--Obtiene todos los datos de la tabla usuarios que contienen el 
--en 'email' el signo @
SELECT * FROM usuarios WHERE email LIKE '%@%'





