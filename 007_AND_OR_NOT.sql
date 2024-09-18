
--Comandos NOT, AND, OR
--Comandos de negacion, comparacion


--Obtiene todo los datos de la tabla usuarios con email distinto de sara@gmail.com
SELECT * FROM usuarios WHERE NOT email = "sara@gmail.com";


--Obtiene todo los datos de la tabla usuarios con email distinto de sara@gmail.com
-- y con edad = 15
SELECT * FROM usuarios WHERE NOT email = "sara@gmail.com" AND edad = 15;


--Obtiene todo los datos de la tabla usuarios con email distinto de sara@gmail.com
-- o los usuarios donde la edad = 15
SELECT * FROM usuarios WHERE NOT email = "sara@gmail.com" OR edad = 15;





