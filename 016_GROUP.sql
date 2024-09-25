--Comanndo para agrupar dependiendo de la condicion

--Agrupa los resultados por edad diferente
SELECT MAX(edad) FROM usuarios GROUP BY edad;

--Agrupa los resultados por edad diferentes y cuenta cuantos registro existen 
--en cada una
SELECT COUNT(edad), edad FROM usuarios GROUP BY edad;

--Agrupa los resultados por edad diferente y cuenta cuantos 
--registros existen en cada una y los ordena
SELECT COUNT(edad), edad FROM usuarios GROUP BY edad ORDER BY edad;

--Agrupa los resultados por edad diferente mayor a 15, cuentas cuantos registros existen
--de cada una y los ordena de menor a mayor
SELECT COUNT(edad), edad FROM usuarios WHERE edad > 15 GROUP BY edad ORDER BY edad ASC;