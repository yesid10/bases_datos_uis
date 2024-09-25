--Cuenta cuantas filas contienen un dato no nulo en el camp de la tabla "usuarios" mayor a 3
SELECT COUNT(edad) FROM usuarios HAVING COUNT(edad) > 3;