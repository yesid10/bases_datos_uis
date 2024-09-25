--Como su nombre lo indica, este coamdno es utilizdo para realizar un conteo dependiendo 
--de la condicion

--Cuenta cuantas filas contiene la tabla "usuarios"
SELECT COUNT(*) FROM usuarios;

--Cuenta cuantas filas contiene un dato no nulo en el campo de edad. tabla "usuarios"
SELECT COUNT(edad) FROM usuarios;