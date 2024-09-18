--Comando NULL: combina su funcionalidad con otros comando para hacer validaciones

--Obtiene todos los datos de la tabla usuarios con email = NULL
SELECT * FROM usuarios WHERE email IS NULL;


--Obtiene todos los datos de la tabla usuarios con email no es nulo
SELECT * FROM usuarios WHERE email IS NOT NULL;


--Obtiene todos los datos de la tabla usuarios con email no es nulo y edad = 15
SELECT * FROM usuarios WHERE email IS NOT NULL AND edad = 15;


--IFNULL()
--Obtiene el nombre, apellido y edad de la taabla usuarios, y si la edad es nula
-- la muestra como 0
SELECT name, surname, IFNULL(edad, 0) AS age FROM usuarios;






