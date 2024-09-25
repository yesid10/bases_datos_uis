--Case obtiene obtiene los datos que se le esten pidiendo y los muestra 
--con las condiciones que se le pidio

--Obtiene todos los datos de la tabla usuarios y establece condicones de visualizacion
SELECT *,
    CASE
        WHEN edad > 18 THEN 'Es mayor de edad'
        WHEN edad = 18 THEN 'Acaba de cumplir la mayoria de edad'
        ELSE 'Es menor de edad'
    END AS 'Es menor de edad ?'
FROM usuarios;


--Obtiene todos los datos de la tabla usuarios y establece condicones de visualizacion, retornando 
--booleanos como respuesta

SELECT *,
    CASE
        WHEN edad > 18 THEN TRUE
        ELSE FALSE
    END AS 'Es mayor de edad ?'
FROM usuarios;
