--Ejercicio 15 ¿Cuál es el accesorio más barato disponible?
SELECT MIN(precio) AS accesorio_mas_barato
FROM productos
WHERE categoria = 'Accesorios';