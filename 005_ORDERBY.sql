--Comando ORDER BY

Comando para ordenar de manera ascedente

/*Vamos a alterar la tabla usuarios y actualizamos el campo email y a los nombre juan
y maria le agregamos el email = 'sara@gmail.com'*/

ALTER TABLE usuarios ADD COLUMN email VARCHAR(255);

UPDATE usuarios
SET email = "sara@gmail.com" WHERE name = "juan" AND name = "Maria";

/*Comando para ordenar  los datos de la tabla usuarios por edad de manera ascedente*/
SELECT * FROM usuarios ORDER BY edad;

/*Comando para ordenar  los datos de la tabla usuarios por edad de manera ascedente,
igual que el anterior pero con la palabra reservada ASC*/
SELECT * FROM usuarios ORDER BY edad ASC;

/*Comando para ordenar  los datos de la tabla usuarios por edad de manera descendente*/
SELECT * FROM usuarios ORDER BY edad DESC;

--Comando para obtener todos los datos datos de la tabla usuarios con email igual a 
sara@gmail.com y los ordena de manera descendente
SELECT * FROM usuarios WHERE email='sara@gmail.com' ORDER BY edad DESC;

--Comando para obtener todos los nombres de la tabla usuarios con email igual a 
sara@gmail.com y los ordena de manera descendente
SELECT name FROM usuarios WHERE email='sara@gmail.com' ORDER BY edad DESC;






