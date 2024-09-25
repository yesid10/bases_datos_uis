--Quiz 1

--Creación de la Base de Datos


--• Crea una base de datos llamada "Tienda".

CREATE DATABASE tienda;

-- • En la base de datos, crea dos tablas:
-- o Clientes: con las columnas id_cliente, nombre, apellido, correo, ciudad, edad,
-- membresia (puede ser 'normal', 'premium' o 'vip').
CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(50),
    edad INT,
    membresia ENUM('normal', 'premium', 'vip') NOT NULL
);

-- o Ventas: con las columnas id_venta, id_cliente, fecha_venta, monto, producto,
-- categoria (por ejemplo, 'tecnología', 'moda', 'hogar').
CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_venta DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    producto VARCHAR(100) NOT NULL,
    categoria ENUM('tecnología', 'moda', 'hogar') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);


-- Inserta al menos 10 registros en cada tabla con datos ficticios que permitan realizar las consultas
-- requeridas.
    --Registros para clientes: 
        INSERT INTO clientes (nombre, apellido, correo, ciudad, edad, membresia) VALUES
('Carlos', 'Pérez', 'carlos.perez@mail.com', 'Bogotá', 30, 'premium'),
('Ana', 'Gómez', 'ana.gomez@mail.com', 'Medellín', 25, 'normal'),
('Luis', 'Rodríguez', 'luis.rodriguez@mail.com', 'Cali', 40, 'vip'),
('María', 'López', 'maria.lopez@mail.com', 'Cartagena', 35, 'normal'),
('Jorge', 'Martínez', 'jorge.martinez@mail.com', 'Barranquilla', 28, 'premium'),
('Lucía', 'Hernández', 'lucia.hernandez@mail.com', 'Bogotá', 22, 'vip'),
('Pedro', 'Sánchez', 'pedro.sanchez@mail.com', 'Medellín', 45, 'normal'),
('Camila', 'Ramírez', 'camila.ramirez@mail.com', 'Cali', 32, 'premium'),
('Andrés', 'Castro', 'andres.castro@mail.com', 'Bogotá', 27, 'vip'),
('Paola', 'García', 'paola.garcia@mail.com', 'Cúcuta', 29, 'normal');


    --Registros para ventas:
        INSERT INTO ventas (id_cliente, fecha_venta, monto, producto, categoria) VALUES
(1, '2024-09-10', 150000.00, 'Smartphone', 'tecnología'),
(2, '2024-09-11', 350000.50, 'Ropa deportiva', 'moda'),
(3, '2024-09-12', 85000.00, 'Batidora', 'hogar'),
(4, '2024-09-13', 250000.00, 'Laptop', 'tecnología'),
(5, '2024-09-14', 120000.00, 'Zapatos', 'moda'),
(6, '2024-09-15', 98000.00, 'Aspiradora', 'hogar'),
(7, '2024-09-16', 500000.00, 'Televisor', 'tecnología'),
(8, '2024-09-17', 60000.00, 'Cartera', 'moda'),
(9, '2024-09-18', 175000.00, 'Refrigerador', 'hogar'),
(10, '2024-09-19', 320000.00, 'Consola de videojuegos', 'tecnología');

-- Realiza las siguientes consultas básicas:
-- 1. Obtén todos los clientes únicos que tienen una membresía 'premium'.

    SELECT * FROM clientes WHERE membresia = 'premium';

-- 2. Selecciona todas las ventas de productos de la categoría 'tecnología' cuyo monto sea mayor a
-- $1000. Ordena los resultados de mayor a menor monto.

    SELECT * FROM ventas WHERE categoria = 'tecnología' AND monto > 1000 ORDER BY monto DESC;

-- 3. Encuentra los clientes cuyo correo contenga la palabra 'gmail' y ordena los resultados por
-- nombre.

    SELECT * FROM clientes WHERE correo LIKE '%gmail%' ORDER BY nombre ASC;
    
-- 4. Muestra todos los clientes menores de 30 años que sean de la ciudad 'Bogotá' o 'Medellín'.

        SELECT * 
    FROM clientes
    WHERE edad < 30
    AND (ciudad COLLATE utf8_general_ci = 'Bogota' OR ciudad COLLATE utf8_general_ci = 'Medellin');
        
-- 5. Selecciona las primeras 5 ventas más recientes (con el uso de LIMIT).

        SELECT * 
    FROM ventas
    ORDER BY fecha_venta DESC LIMIT 5;


-- 6. Selecciona el número total de ventas realizadas por cada categoría.

    SELECT categoria, COUNT(*) AS total_ventas
    FROM ventas
    GROUP BY categoria;

-- 7. Muestra el cliente más joven (edad mínima).

    SELECT * FROM clientes WHERE edad = (SELECT MIN(edad) FROM clientes);

-- 8. Calcula el promedio de ventas de la categoría 'moda'.

        SELECT AVG(monto) AS promedio_ventas
    FROM ventas
    WHERE categoria = 'moda';


-- 9. Encuentra todos los clientes cuyo id_cliente esté en la lista de ventas.

        SELECT *
    FROM clientes
    WHERE id_cliente IN (SELECT id_cliente FROM ventas);


-- 10. Muestra todas las ventas que se realizaron entre el 1 de enero de 2024 y el 31 de diciembre de
-- 2024.

    SELECT * FROM ventas WHERE fecha_venta BETWEEN '2024-01-01' AND '2024-12-31';

-- 11. Muestra el nombre completo de los clientes (concatenando nombre y apellido) con alias
-- Nombre Completo.

        SELECT CONCAT(nombre, ' ', apellido) AS 'Nombre Completo'
    FROM clientes;


-- 12. Selecciona todas las ventas agrupadas por categoría que tengan un monto total superior a
-- $5000. Usa la cláusula HAVING.

        SELECT categoria, SUM(monto) AS total_monto
    FROM ventas
    GROUP BY categoria
    HAVING SUM(monto) > 5000;


-- 13. Muestra el nombre del cliente y el monto de cada venta. Si el cliente no ha hecho una venta,
-- muestra NULL en lugar del monto.

        SELECT CONCAT(c.nombre, ' ', c.apellido) AS `Nombre del Cliente`, v.monto
    FROM clientes c
    LEFT JOIN ventas v ON c.id_cliente = v.id_cliente;


-- 14. Muestra el nombre de los clientes y usa la instrucción CASE para indicar si son menores de
-- edad (<18) o adultos (>=18).

SELECT *,
    CASE
        WHEN edad >= 18 THEN 'El cliente es mayor de edad'
        ELSE 'El clientes es menor de edad'
    END AS 'Es menor de edad ?'
FROM clientes;

-- 15. Encuentra el número total de clientes que tienen una membresía de tipo 'vip' o 'premium' y
-- están en la ciudad de 'Bogotá'.

SELECT COUNT(*) AS total_clientes
FROM clientes
WHERE (membresia = 'vip' OR membresia = 'premium')
  AND ciudad = 'Bogotá';
