-- Ejercicio 14 Muestra todas las ventas realizadas en el año 2025, ordenadas por fecha (másclientes
SELECT *
FROM ventas
WHERE strftime('%Y', fecha_venta) = '2025'
ORDER BY fecha_venta DESC;