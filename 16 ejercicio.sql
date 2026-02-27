-- Ejercicio 16 Cuál es el cliente que más dinero ha gastado en total? Muestra su nombre y monto 
--total.
SELECT c.nombre, SUM(v.total_venta) AS total_gastado
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY v.id_cliente
ORDER BY total_gastado DESC
LIMIT 1;