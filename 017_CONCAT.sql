--Concatena las palabras dependiendo de la condicion

--Concatena en una sola columna los campos de nombre y apllido
SELECT CONCAT('Nombre:', name, ',Apellidos:', surname) FROM usuarios;

--Concatena en una sola columna los campos de nombre y apllido y establece
-- el alias de nombre

SELECT CONCAT('Nombre:', name, ',Apellidos:', surname) AS 'Nombre compleo' FROM usuarios;