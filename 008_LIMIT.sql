--Comando LIMIT: Limita la muestra de resultados a un numero eespecifico

--Obtiene las tres primeras filas de la tabla usuarios
SELECT * FROM usuarios LIMIT 3;


--Obtiene las dos primeras filas de la tabla usuarios con emaail = sara@gmail.com
--o edad = 15
SELECT * FROM usuarios WHERE NOT email = 'sara@gmail.com' OR edad = 15 LIMIT 2;






