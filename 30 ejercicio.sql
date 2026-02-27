--Ejercicio 30 Genera un análisis demográfico: para cada rango de edad (18-29, 30-39, ..., 70+), 
--cuenta clientes únicos, número de transacciones e ingresos totales. Ordena por rango de edad.
WITH edades AS (
    SELECT c.id_cliente,
           (CAST(strftime('%Y','now') AS INTEGER) - 
            CAST(strftime('%Y', c.fecha_nacimiento) AS INTEGER)) AS edad,
           v.id_venta,
           v.total_venta
    FROM clientes c
    LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
)

SELECT 
    CASE 
        WHEN edad BETWEEN 18 AND 29 THEN '18-29'
        WHEN edad BETWEEN 30 AND 39 THEN '30-39'
        WHEN edad BETWEEN 40 AND 49 THEN '40-49'
        WHEN edad BETWEEN 50 AND 59 THEN '50-59'
        WHEN edad BETWEEN 60 AND 69 THEN '60-69'
        ELSE '70+'
    END AS rango_edad,
    COUNT(DISTINCT id_cliente) AS clientes_unicos,
    COUNT(id_venta) AS numero_transacciones,
    SUM(total_venta) AS ingresos_totales
FROM edades
GROUP BY rango_edad
ORDER BY rango_edad;