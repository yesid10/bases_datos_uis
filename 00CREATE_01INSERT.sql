/*Comando para la creacion de la tabla y posterioemente hacer registro*/

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50)
);


/*Comandos para crear un registro de tres personas*/
INSERT INTO usuarios (user_id, name, surname)
VALUES 
(1, 'Maria', 'Lopez'),
(2, 'Paco', 'Perez'),
(3, 'El', 'Merma');
