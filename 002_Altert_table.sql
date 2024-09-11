/*Posteriormente se crea una nueva columna "edad", con el comando de abajo */

ALTER TABLE usuarios ADD edad INT NOT NULL;



/*Para agregar edades  los usuarios se utilizan los siguientes comandos, donde 
UPADTE usuarios esta indicando que se va a trabajr en la tabla usuarios
SET es el valor que va a registrar
WHERE es la condicion en este caso dode los user_id sean iguales a los que estan registrados

*/
UPDATE usuarios
SET edad = 25
WHERE user_id = 1;

UPDATE usuarios
SET edad = 30
WHERE user_id = 2;

UPDATE usuarios
SET edad = 22
WHERE user_id = 3;



/*En este caso estoy cambiando el user_id = 2 a user_id=11 */
UPDATE usuarios
SET user_id = 11
WHERE user_id = 2;

/*y posteriormente se hace el cambio de edad*/

UPDATE usuarios
SET edad = 45
WHERE user_id = 11;

/*Le cambioamos la edad al usuario con el id = 11*/